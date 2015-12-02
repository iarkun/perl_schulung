#!/usr/bin/perl

use strict;
use warnings;

while (<>) {
	chomp;		# Zeilenumbruch entfernen
	#s/"/\\"/g;
	s/"//g;
	my @parts = split /\t/; #Am <TAB> auftrennen
#	printf "\"%s\"\n"
	# join ($glue, @array)
	printf qq/"%s"\n/, join('","', @parts);	
}
