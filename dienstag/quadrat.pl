#! /usr/bin/perl

use strict;
use warnings;

my @liste = (1,3,5,7,9);

my @quadrate;
my $var;
my $quad;
#Ziel: In Quadrate stehen die Quadratzahlen von @list

foreach $var (@liste) {
	$quad = $var * $var;
	push @quadrate, $quad;
	printf "Zahl: %s , Quadrat: %s\n", $var, $quad;
	
}

#Kurzform
#push (@quadrate_zwei, $_*$_) foreach @liste;

#printf "Liste: %s\n", $_ foreach @liste;
#printf "Quadrate: %s\n", $_ foreach @quadrate;
