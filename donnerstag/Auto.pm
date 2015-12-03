package Auto;

use strict;
use warnings;

sub new {
#  printf "%s\n", $_ foreach @_;
  my $class = shift;
  my $name = shift;
  my $data = {'name' => $name};
  # solange bless die letzte Zeile im Konstruktor ist, kann man sich return sparen
  bless $data, $class;
}

1; # Make Perl happy
