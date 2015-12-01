#! /usr/bin/perl

use strict;
use warnings;


sub catfile
{
 my $path = shift;
 my $fh; 
 # Wegen Short-Circuit-Evaluation wird die nur im Fehlerfall ausgefuehrt
 open($fh, '<', $path) or die "Kann Datei nicht oeffnen!\n"; 
# die "Kann Datei nicht oeffnen!\n" unless open($fh, '<', $path);
 while (my $line = <$fh>){
   print $line;
 }
 close($fh);
}

die "Bitte Datei angeben!\n" unless @ARGV;
die "Datei nicht vorhanden!\n" unless -f $ARGV[0];
#die "Datei nicht lesbar!\n" unless -r $ARGV[0];

catfile $ARGV[0];
