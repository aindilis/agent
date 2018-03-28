#!/usr/bin/perl -w

use BOSS::Config;
use KBS2::Client;
use UniLang::Util::TempAgent;
use Suppositional::Reasoner;

# use PDDLConversion;

use Data::Dumper;

$specification = q(
	-s <situation>		Load specific situation
);

my $config =
  BOSS::Config->new
  (Spec => $specification);
my $conf = $config->CLIConfig;

# $UNIVERSAL::systemdir = "/var/lib/myfrdcsa/codebases/minor/system";

# so this is pretty straight forward

# we have a knowledge base

# we have a planning system

# the planning system generates its plans from the knowledge base

# then there is a plan

# agent executes that plan

# if the plan fails, the agent replans

# we can improve this process in the future

# so for a very simple example

# the plan requires an interactive execution monitor, to check with
# the agent and/or the environment to see if the plan step has been
# completed

my $client = KBS2::Client->new;
my $pddlconverter = KBS2PDDL->new; # converter should be bidirectional
my $tempagent = UniLang::Util::TempAgent->new;

LoadSituation
  (
   Situation => $conf->{'-s'} || "easy/simple",
  );


sub AddKnowledge {
  push @knowledge, $args{Knowledge};
}

sub GeneratePlan {

  # generation of the plan involves planning the next planning phase,
  # right?  Also, the plan hopefully is conformant - that way, any new
  # knowledge is deal with.

  # we can take a regular plan and make it conformant, by having any
  # new knowledge of a certain kind force a (goal state or an action
  # and replanning)

  # non-cooperation by the agent (in the case of a human) or inability
  # to execute tasks must be (eventually) modelled, perhaps with
  # capability logic

}

sub InteractiveExecutionMonitor {

}

sub LoadSituation {
  my %args = @_;

}

sub MainLoop {
  # process any new knowledge
  if (scalar @knowledge) {
    # update the knowledge base

    # how does this even work?  so, for instance, if a statement is
    # negated
  }

  # now check if our plan is okay

  # perhaps use the suppositional reasoner

  GeneratePlan();

  # for a first step of using the suppositional reasoner, we can use
  # it to validate the logical soundness of a plan

}

# use the hygiene domain as an example, but add some new knowledge

# convert the hygyiene domain to kbs, to be converted back to PDDL




# have a situation library for testing

my $kbs =
  {
   Ethics =>
   [
    '(obligatory ())',
   ],
   Goals =>
   [
    '(get )'
   ],
  };



# wishlist

# nl to pddl for goals
