#! /usr/bin/perl

use strict;
use warnings;


sub sum
{
printf "Laenge von @_: %s\n", scalar(@_);
#	my $a = $_[0];
#	my $b = $_[1];
	my $a = shift(@_);
	my $b = shift; # Nimmt @_ als Default Array
	return $a + $b;
}

printf "Laenge von @_: %s\n", scalar(@_);
printf "Summe von 3 und 7: %d\n", sum(3,7);
printf "Laenge von @_: %s\n", scalar(@_);
