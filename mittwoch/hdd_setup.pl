#! /usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

sub read_part
{
 my @liste;
 my $userinfo;
 open my $fh, '-|', 'partx --show -b /dev/sda' or die "Kann Programm nicht ausfuehren";
 while (<$fh>) {
  chomp;
  my @info = split /:/;
  $userinfo = { 'username' => $info[0],
		'uid' => $info[2],
		'gid' => $info[3],
		'realname' => $info[4],
		'homedir' => $info[5],
		'shell' => $info[6]};
  print Dumper $userinfo;
  push @liste, $userinfo;
 }
 close $fh;
 return @liste;
}

my @users = userliste();
#printf "%s\n", $_ foreach sort @users;
#printf "%s\n", $_ foreach sort {lc $a cmp lc $b} @users;
#printf "%20s %d\n", $_->{'username'}, $_->{'uid'} foreach @users;
printf "%20s %d\n", $_->{'username'}, $_->{'uid'} foreach sort {lc $a->{'username'} cmp lc $b->{'username'}} @users;
