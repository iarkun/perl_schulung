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
  next unless $line =~ m/^ #Zeilenanfang
		[^\#]  	#Kein # am Zeilenanfang, sonst jedes Zeichen
		[^\#]* 	#Dann beliebig viele Nicht -#-Zeichen
			#Man kann auch anstelle der beiden Zeilen ueber dieser
			# [^\#]+ schreiben, also Mindestens ein Nicht-#-Zeichen
			#Im Prinzip aber beliebig viele
		\#	#Dann genau ein #-Zeichen
		\s*	#Gefolgt von beliebig vielen Leerzeichen, keins ist auch OK
		(.*)	#Beliebig viele beliebige Zeichen
			#Wegen Gruppierung () in $1 gespeichert
		$	#...Bis zum Ende der Zeile
		/x;	#Extended RegEX
#^[^#].*?#s*(.*)$
#  ^[^#][^#]*#\s*(.*)$
  printf "%s\n", $1;
#  printf "%s\n", $line;
 }
 close($fh);
}

print_service("/etc/services")
