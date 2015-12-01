#! /usr/bin/perl

use strict;
use warnings;

sub sum 
{
	my $wert = shift;
	$wert += shift while @_;
	return $wert;
}
my @liste = (3,4,5,6);
my @quadrate = (9,16,24,36);

printf "Summe von 3 und 7: %d\n", sum(3,7);
printf "Summe von \@liste: %d\n", sum(@liste);
# Paramater Array besteht aus allen Werten beider Arrays
printf "Summe von ....: %d\n", sum(@liste, @quadrate);
