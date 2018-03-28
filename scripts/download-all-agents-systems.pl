#!/usr/bin/perl -w

use File::Slurp;

my $c = read_file("/var/lib/myfrdcsa/codebases/minor/agent/data/agent-systems.txt");
foreach my $line (split /\n/, $c) {
  if ($line =~ /./ and $line !~ /^\s*\#/) {
    $line =~ s/http.+//;
    $line =~ s/\s+$//;
    # print "<$line>\n";
    my $command = "radar-web-search -a agent $line";
    print "$command\n";
    system $command;
  }
}
