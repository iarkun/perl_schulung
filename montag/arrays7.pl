#! /usr/bin/perl

use strict;
use warnings;

my @liste1 = (1,2,3);
my @liste2 = (11,12,13);

my @multiliste = (\@liste1, \@liste2);

print "Laenge von multiliste: ", scalar @multiliste, "\n";
print "@multiliste", "\n";

#my $variable;
#foreach $variable (@multiliste) {
#	print $variable, "\n";
#}

#foreach my $var (@multiliste) {
#	print $var, "\n";
#}
#
#foreach (@multiliste) {
#	print $_, "\n";
#}
#
#print $_, "\n" foreach @multiliste;

# 1. Elemente von multiliste, dann derefenzieren und 2. Element ansprechen
print "2 = ", $multiliste[0]->[1], "\n";
$liste1[1] = 5;
print "2 = ", $multiliste[0]->[1], "\n";
