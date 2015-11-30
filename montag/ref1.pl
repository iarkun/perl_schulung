#! /usr/bin/perl

use strict;
use warnings;

my @liste1 =(1,2,3);
my @liste2 =(11,12,13);
my $ref = \@liste1;
push @liste1, \@liste2; # 4.Element von liste1 ist Refernz auf liste2

#print $_, "\n" foreach @{$ref};
print $_, "\n" foreach @$ref;


print $_, "\n" foreach @{$ref->[3]};
