#! /usr/bin/perl

use strict;
use warnings;

my $zahl=17;
if ($zahl < 10){
	print "Die Zahl ist kleiner als 10 \n";
}
if ($zahl > 10){
	print "Die Zahl ist größer oder gleich 10 \n";
}
if ($zahl == 10){
	print "Die Zahl ist gleich 10 \n";
}

print "Die Zahl ist ungleich 0 \n" if $zahl != 0;

my $wert=0;
my $ergebnis = $zahl / $wert if $wert;
print "Division: ", $ergebnis, "\n" if $wert;

