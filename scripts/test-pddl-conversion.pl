#!/usr/bin/perl -w

# use this with suppositional reasoner


use KBS2::ImportExport;
use PerlLib::SwissArmyKnife;
use Verber::Ext::PDDL::Problem;
use Verber::Ext::PDDL::Domain;

my $problempddl = GetPDDL
  (
   Type => "Problem",
   File => "/var/lib/myfrdcsa/codebases/minor/agent/situation-library/easy/hygiene/pddl/hygiene.p.pddl",
  );
my $domainpddl = GetPDDL
  (
   Type => "Domain",
   File => "/var/lib/myfrdcsa/codebases/minor/agent/situation-library/easy/hygiene/pddl/hygiene.d.pddl",
  );

print Dumper($problempddl);
exit(0);
my $ie = KBS2::ImportExport->new;

sub GetPDDL {
  my %args = @_;
  my $file = $args{File};
  my $contents = read_file($file);
  my $pddl;
  if ($args{Type} eq "Problem") {
    $pddl = Verber::Ext::PDDL::Problem->new
      (
       Contents => $contents,
      );
  } elsif ($args{Type} eq "Domain") {
    $pddl = Verber::Ext::PDDL::Domain->new
      (
       Contents => $contents,
      );
  }
  $pddl->Parse;
  return $pddl;
}

# print Dumper([$problempddl,$domainpddl]);

ConvertVerberExtPDDLToKBS
  (
   VerberExtPDDL => $problempddl,
  );

sub ConvertVerberExtPDDLToKBS {
  my %args = @_;
  my $d = $args{VerberExtPDDL};

  my @misc;
  my @types;
  my @objects;
  my @inits;
  my @goals;

  # System Contents TimeUnits Order
  # SubTypes SuperTypes
  # Types HasType
  # Objects HasObjects
  # Inits
  # Goals

  # handle the System Contents TimeUnits Order

  push @misc, ["has-time-units",$d->TimeUnits];
  push @misc, ["has-system",$d->System];
  push @misc, ["has-order",$d->Order];
  # push @misc, ["has-contents",$d->Contents];

  # handle the SuperTypes SubTypes
  foreach my $key1 (keys %{$d->SuperTypes}) {
    foreach my $key2 (keys %{$d->SuperTypes->{$key1}}) {
      # push @types, ["genls",$key1,$key2];
      # push @types, ["genls",$key2,$key1];
    }
  }
  if (0) {
    foreach my $key1 (keys %{$d->SubTypes}) {
      foreach my $key2 (keys %{$d->SubTypes->{$key1}}) {
	# push @types, ["genls",$key1,$key2];
	# push @types, ["genls",$key2,$key1];
      }
    }
  }

  # handle the Types HasType
  foreach my $key (keys %{$d->Types}) {
    push @types, ["genls",$key,"Type"];
  }
  if (0) {
    foreach my $key1 (keys %{$d->HasType}) {
      push @objects, ["isa",$key1,$d->HasType->{$key1}];
    }
  }

  # handle the Objects HasObjects
  foreach my $key (keys %{$d->Objects}) {
    push @objects, ["isa",$key,"Object"];
  }

  foreach my $key1 (keys %{$d->HasObjects}) {
    foreach my $key2 (keys %{$d->HasObjects->{$key1}}) {
      if ($key1 eq $key2) {
	print "ERROR: same type $key1\n";
      } else {
	push @objects, ["isa",$key2,$key1];
      }
    }
  }

  # handle the Inits
  foreach my $key (keys %{$d->Inits}) {
    # print "$key\n";
    my $res = $ie->Convert
      (
       Input => $key,
       InputType => "KIF String",
       OutputType => "Interlingua",
      );
    if ($res->{Success}) {
      my $formula = $res->{Output};
      # handle translation as necessary, for instance (at 0 ()) should
      # become something else probably

      # in general maintain a list of all transformations between any two sources

      push @inits, $formula->[0];
      if ($res->{Success}) {
	foreach my $predicate (keys %{$res->{Result}}) {
	  $predicates->{$predicate} = 1;
	}
      }
    }
  }

  # handle the Goals
  foreach my $key (keys %{$d->Goals}) {
    # print "$key\n";
    my $res = $ie->Convert
      (
       Input => $key,
       InputType => "KIF String",
       OutputType => "Interlingua",
      );
    if ($res->{Success}) {
      my $formula = $res->{Output};
      # extract predicates
      my $res = ExtractPredicatesFromFormula
	(
	 Item => $formula->[0],
	);

      # handle translation as necessary, for instance (at 0 ()) should
      # become something else probably

      # in general maintain a list of all transformations between any two sources

      push @goals, $formula->[0];
      if ($res->{Success}) {
	foreach my $predicate (keys %{$res->{Result}}) {
	  $predicates->{$predicate} = 1;
	}
      }
    }
  }

  # extract the predicates
  my $res = ExtractPredicatesFromFormula
    (
     Item => ["and",@misc,@types,@objects,@inits,@goals],
    );
  my $predicates = {};
  if ($res->{Success}) {
    $predicates = $res->{Result};
  }

  print Dumper
    ({
      Predicates => $predicates,
      Misc => \@misc,
      Types => \@types,
      Objects => \@objects,
      Items => \@inits,
      Goals => \@goals,
     });
}

sub ExtractPredicatesFromFormula {
  my %args = @_;
  if (! exists $args{Predicates}) {
    $args{Predicates} = {};
  }
  my $ref = ref $args{Item};
  if ($ref eq "ARRAY") {
    my $scalar = scalar @{$args{Item}};
    if ($scalar > 0) {
      $args{Predicates}->{$args{Item}->[0]} = 1;
      if ($scalar > 1) {
	foreach my $i (1..$scalar) {
	  ExtractPredicatesFromFormula
	    (
	     Item => $args{Item}->[$i],
	     Predicates => $args{Predicates},
	    );
	}
      }
    }
  }
  return {
	  Success => 1,
	  Result => $args{Predicates},
	 };
}
