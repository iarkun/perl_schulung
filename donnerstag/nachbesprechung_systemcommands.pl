#! /usr/bin/perl

use strict;
use warnings;

die "Keine Dateinamen angegeben\n" unless @ARGV;

foreach my $fname (@ARGV) {
	print "Starte Editor....\n";
	my $cmd = sprintf("editor %s", $fname);
  	system $cmd;
  	printf "Verarbeiten der Datei...\n";

}
