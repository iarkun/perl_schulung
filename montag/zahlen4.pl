#! /usr/bin/perl

use strict;
use warnings;

my $zahl=17;

print "Die Zahl ist ungleich 0 \n" if $zahl != 0;

my $wert=0;
my $ergebnis; # Deklaration, implizit undef
$ergebnis = $zahl / $wert if $wert;
$ergebnis = $zahl - 17;

print "Ergebnis: ", $ergebnis, "\n" if defined $ergebnis;
#Achtung: 0 entspricht logisch false, ist aber ein definierter Wert,
#undef ist auch logisch false, aber nicht definiert

