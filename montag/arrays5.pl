#! /usr/bin/perl

use strict;
use warnings;

my @liste1 = (1,2,3);
my @liste2 = (11,12,13);
my @multiliste = (@liste1, @liste2);
print "Laenge von multiliste: ", scalar @multiliste, "\n";
print "@multiliste", "\n";

my $variable;
foreach $variable (@multiliste) {
	print $variable, "\n";
}

foreach my $var (@multiliste) {
	print $var, "\n";
}

foreach (@multiliste) {
	print $_, "\n";
}

print $_, "  " foreach @multiliste;


