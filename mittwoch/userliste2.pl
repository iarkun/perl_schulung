#! /usr/bin/perl

use strict;
use warnings;

sub userliste
{
 #Oeffnet einen Programmaufruf zum Lesen mit dem Diamant-Operator
 open my $fh, '-|', 'getent passwd' or die "Kann Programm nicht ausfuehren";
 while (<$fh>) {
  chomp;
 # my @info = split /:/;
 # printf "[%s] [%s]\n", $info[0], $info[2];
  printf "%s\n", (split /:/)[2];
 }
 close $fh;
}

userliste;
