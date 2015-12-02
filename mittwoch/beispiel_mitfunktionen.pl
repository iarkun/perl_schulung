#! /usr/bin/perl

use strict;
use warnings;

my @liste = (1,3,5,7,9);
#my @quadrate = map { $_*$_} @liste;

#printf "%d\n", $_ foreach @quadrate;
#printf "%d\n", $_ foreach map {$_*$_} @liste;


# map erzeugt Array mit Array-Referenzen
# daher liefert foreach in $_ eine Array-Referenz
printf "%2d --> %3d\n", $_->[0], $_->[1] foreach map { [$_, $_*$_ ] } @liste;
