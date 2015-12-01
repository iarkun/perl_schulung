#! /usr/bin/perl

use strict;
use warnings;

sub hallo
{
	my $name = $_[0];
	printf "Hallo %s\n",$name;
	printf "Anzahl Parameter: %d\n", scalar(@_);
}

sub gruesse
{
	printf "Gruesse an %s\n", $_ foreach @_;
}

hallo("Ilyas");
gruesse('Erny', "Berd");
