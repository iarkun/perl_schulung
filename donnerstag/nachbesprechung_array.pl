#! /usr/bin/perl

use strict;
use warnings;

my @liste = (1,3,5,7,9);

# map erzeugt Array mit Array-Referenzen
# daher liefert foreach in $_ eine Array-Referenz
printf "%2d --> %3d\n", $_->[0], $_->[1] foreach map { [$_, $_*$_ ] } @liste;

# Vor Aufruf von map
# @liste = (1,3,5,7,9);
# Nach Verarbeitung durch map
# ([1,1], [3,9], [5,25], [7,49], [9,81] )
# Das wird von foreach verarbeitet und jedes Element wird $_ zugewiesen
~                                                                               
~                                                                               
~                                                                               
~                                                                               
