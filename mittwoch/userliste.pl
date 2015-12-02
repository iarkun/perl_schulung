#! /usr/bin/perl

use strict;
use warnings;
my $test = `getent passwd`;
print $test;
printf "%d Zeichen\n", length $test;

my @lines = split(/\n/, $test);
printf "%d Zeilen\n", scalar @lines;

#foreach (@lines) {..... Jede Zeile steht in $_, wie bei <> }
