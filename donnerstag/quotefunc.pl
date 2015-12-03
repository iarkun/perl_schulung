#! /usr/bin/perl

use strict;
use warnings;

# Spezielle Funktionen q*
#   Trennzeichen fuer Argumente: Klammerpaare, oder beliebiges Zeichen

my $skalar = q(Drag'n'Drop "hier");
printf "%s\n", $skalar;

my $text = qq{Alter text: $skalar};
printf "%s\n", $text;

my @liste = qw/name strasse
               ort plz/;
printf "%s\n", join(', ', @liste);

my $output = qx/ls -u1/;
printf "%s\n", $output;

my $regtest = qr/.*work.*/;
print "Es wurde gearbeitet\n" if $output =~ $regtest;
