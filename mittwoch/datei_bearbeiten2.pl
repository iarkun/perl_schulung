#! /usr/bin/perl

use strict;
use warnings;

my $columns;
while (<>) {
  chomp;                        # Zeilenumbruch entfernen
  #s/"/\\"/g;
  s/"//g;
  my @parts = split /\t/;       # Am <TAB> auftrennen
  # Bei 1. Zeile die Anzahl merken
  $columns = scalar @parts unless defined $columns;
  # join($glue, @array)
  printf qq/"%s"\n/, join('","', @parts) if @parts == $columns;
  # Fehler auf der Fehlerausgabe ausgeben
  printf STDERR "IGN %s\n", $_ unless @parts == $columns;
}
~               
