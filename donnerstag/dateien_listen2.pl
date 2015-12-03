#! /usr/bin/perl

use strict;
use warnings;

sub filelist
{
	my $dir = shift;
	opendir (my $dh, $dir);
	my @liste = grep {!/^\.{1,2}$/} readdir $dh;
	closedir $dh;
	return @liste;
}
my @list = filelist '.';
printf "%s\n", $_ foreach @list;
