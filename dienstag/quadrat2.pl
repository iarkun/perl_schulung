#! /usr/bin/perl

use strict;
use warnings;

# Referen auf Array
my $ref_liste = [1,3,5,7,9];
my $ref_quadrate;

#Ziel: In Quadrate stehen die Quadratzahlen von @list

push (@$ref_quadrate, $_*$_) foreach @$ref_liste;

printf "Liste: %s\n", $_ foreach @$ref_liste;
printf "Quadrate: %s\n", $_ foreach @$ref_quadrate;
