#! /usr/bin/perl

use strict;
use warnings;

sub filelist
{
	my $dir = shift;
	opendir (my $dh, $dir);
	my @liste;
	while ($_ = readdir $dh) {
	#next if /^\.+/;
	next if /^\.{1,2}$/;
	push @liste, $_;
	}
	closedir $dh;
	return @liste;
}

my @list = filelist '.';
printf "%s\n", $_ foreach @list;
