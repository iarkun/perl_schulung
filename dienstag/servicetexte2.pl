#! /usr/bin/perl

use strict;
use warnings;

sub print_service
{
 my $path = shift;
 open my $fh, '<', $path or die "Kann Datei nicht oeffnen!\n"; 
 while (my $line = <$fh>){
  chomp $line;
#  next unless $line; #Leerzeilen ignorieren
#  next if substr($line,0,1) eq "#"; #Kommentarzeilen ignorieren
#  next unless index($line, "#"); #Kommentarzeilen ignorieren
#  next if $line =~ m/^#/; # ^=Zeilenanfang, #=#
  next unless $line =~ m/^[^#].*?#\s*(.*)$/;

  printf "%s\n", $1;
#  printf "%s\n", $line;
 }
 close($fh);
}

print_service("/etc/services")
