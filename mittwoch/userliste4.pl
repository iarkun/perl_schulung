#! /usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

sub userliste
{
 my @liste;
 my $userinfo;
 #Oeffnet einen Programmaufruf zum Lesen mit dem Diamant-Operator
 open my $fh, '-|', 'getent passwd' or die "Kann Programm nicht ausfuehren";
 while (<$fh>) {
  chomp;
  my @info = split /:/;
  #push @liste, $info[0];
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
