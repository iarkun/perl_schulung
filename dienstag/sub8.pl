#! /usr/bin/perl

use strict;
use warnings;

my @liste = (1,3,4,5,6,7,8,10);
my $zahl = 7;

sub in_array
{
 my $suchzahl = shift;
 my $list = shift; #Referenz aus @_ holen
 my @list = @$list; # Dereferenzieren und in @list speichern
 foreach (@list) { # Durch original Array iterieren
  return 1 if ($suchzahl == $_);
}
 return 0;
}


if (in_array($zahl, \@liste)) {
print "Zahl kommt in Liste vor\n";
} else {
print "Zahl kommt NICHT in Liste vor\n";
}
