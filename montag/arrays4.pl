#! /usr/bin/perl

#Arbeiten mit Arrays

use strict;
use warnings;

my @list;
push @list, "10";
push @list, "20";
push @list, "50";
push @list, "100";

print "Höchster Index: ", $#list, "\n";
print "Länge des Arrays: ", scalar @list, "\n";

print "Array hat Elemente\n" if @list;

my $len = @list;
print "Array hat Elemente\n" if $len;

my $wert = pop @list;
print "Wert $wert aus Array entfernt\n";
print "Länge des Arrays: ", scalar @list, "\n";

my $wert = shift @list;
print "Wert $wert aus Array entfernt\n";
print "Länge des Arrays: ", scalar @list, "\n";


unshift @list, "Hallo";
print "Neuer Wert ist: ", $list[0],"\n";
print "Länge des Arrays: ", scalar @list, "\n";

#Elemente an beliebiger Stelle Ersetzen/Loeschen: splice

