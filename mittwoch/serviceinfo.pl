#! /usr/bin/perl

use strict;
use warnings;

sub print_service
{
 my $path = shift;
 open my $fh, '<', $path or die "Kann Datei nicht oeffnen!\n"; 
 while (<$fh>){
  chomp; # das Gleiche wie chomp $_;
#  next unless $line; #Leerzeilen ignorieren
#  next if substr($line,0,1) eq "#"; #Kommentarzeilen ignorieren
#  next unless index($line, "#"); #Kommentarzeilen ignorieren
#  next if $line =~ m/^#/; # ^=Zeilenanfang, #=#

##  next unless $_ =~ m/^[^#].*?#\s*(.*)$/;
#  next unless /^[^#].*?#\s*(.*)$/; # gleiche wie obige Zeile
 
 next unless m/^			# Ausdruck beginnt am Zeilenanfang
		([^\s\#]+)		#Min 1 nicht Space-Zeichen und Kommentarzeichen
		\s+			#Min 1 Whitespace
		(\d+)			#Min 1 Ziffer
		\/
		(tcp|udp)
		\s+
		([^\#]*?\S)		# Min 1 Nicht-KommentarZeichen und das letzte Zeichen darf kein Space sein
		\s*			# ueberzaehlige White-Space-Zeichen
		(\#\s*(.*)|$)		# Kommentarzeichen, beliebig viele Whitespace
					#  gefolgt von Zeichen...
					# ODER direkt ein Zeilenumbruch
		/x;

   # $6 ist nur manchmal definiert, daher bei der Ausgabe
   #  auf undef als Wert achten
 printf "Dienstname: %s, Portnummer: %d, Protokoll: %s [%s]%s\n", $1,$2,$3,$4,defined $6 ? ' {'.$6.'}': '';
#  printf "%s\n", $line;
 }
 close($fh);
}

print_service("/etc/services")
