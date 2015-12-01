#! /usr/bin/perl

use strict;
use warnings;

my @liste = (1,3,4,5,6,7,8,10);
#Suchzahl aus Kommandozeilenparameter aus der 1.Stelle verwenden 
my $zahl = $ARGV[0];

sub in_array
{
 my $suchzahl = shift;
 foreach (@{shift @_}) { # Durch original Array iterieren
  return 1 if ($suchzahl == $_);
}
 return 0;
}

# Es wird überprüft ob Kommandozeilenparameter übergeben wurden
#die "Kein Parameter angegeben !\n" if scalar @ARGV == 0;
die "Kein Parameter angegeben !\n" unless @ARGV;

if (in_array($zahl, \@liste)) {
print "Zahl kommt in Liste vor\n";
} else {
print "Zahl kommt NICHT in Liste vor\n";
}
