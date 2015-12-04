package Mini;

use strict;
use warnings;
use Auto;

use base qw/Auto/;

#Methode aus Oberklasse wird ueberschrieben
sub DESTROY
{

  my $self = shift;
  printf "Mini %s wird aufgelöst.\n", $self->{'name'};
}


1; #Make Perl happy
