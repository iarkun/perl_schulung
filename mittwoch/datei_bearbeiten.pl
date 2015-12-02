#!/usr/bin/perl

use strict;
use warnings;
my $columns;
while (<>) {
	chomp;		# Zeilenumbruch entfernen
	#s/"/\\"/g;
	s/"//g;
	my @parts = split /\t/; #Am <TAB> auftrennen
	$columns = scalar @parts unless defined $columns;
#	printf "\"%s\"\n"
	# join ($glue, @array)
	printf qq/"%s"\n/, join('","', @parts) == $columns;
	printf STDERR "IGN %s\n", $_ unless @parts == $columns;	
}
