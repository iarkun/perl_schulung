#! /usr/bin/perl

use strict;
use warnings;

sub sum 
{
	my $wert = shift;
	$wert += shift while @_;
	return $wert;
}
#Kurzform von
# while (scalar(@_){
#$wert = $wert + shift(@_);
#}

printf "Summe von 3 und 7: %d\n", sum(3,7);
printf "Summe von 3,4,5,6,7: %d\n", sum(3,4,5,6,7);
