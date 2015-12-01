#! /usr/bin/perl

use strict;
use warnings;

sub sum 
{
	my $wert = shift;
#Beispiel:	$wert += 2; #$wert = $wert + 2
#	$wert = $wert + $_ foreach @_;
	$wert += $_ foreach @_;
	return $wert;
}

printf "Summe von 3 und 7: %d\n", sum(3,7);
printf "Summe von 3,4,5,6,7: %d\n", sum(3,4,5,6,7);
