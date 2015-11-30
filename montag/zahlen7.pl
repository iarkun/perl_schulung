#! /usr/bin/perl

#Arbeiten mit Arrays

use strict;
use warnings;

my @list;

@list = (10,20);
#Array Index beginnt bei 0
print "1. Wert: ", $list[0], "\n";
$list[0] = "Regen";
print "1. Wert: ", $list[0], "\n";
#Array Index 2 und 3 sind im undef Zustand
$list[4] = "Perl";
print "5. Wert: ", $list[4], "\n";
