#! /usr/bin/perl

use strict;
use warnings;

#Einbinden eines Moduls
use Data::Dumper;

my $data = {'name' => 'Joey',
		'kurse' => [qw/Perl Debian Git/]};

print Dumper $data;
