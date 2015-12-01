#! /usr/bin/perl

use strict;
use warnings;

my %hash;
$hash{'E'} = "Essen";
$hash{'B'} = "Berlin";

printf "Kennzeichen B fuer %s\n", $hash{'B'};

printf "Key %s\n", $_ foreach keys %hash;

printf "Key: %s, Value: %s\n", $_, $hash{$_} foreach keys %hash;
