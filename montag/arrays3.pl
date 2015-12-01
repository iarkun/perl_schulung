#! /usr/bin/perl

#Arbeiten mit Arrays

use strict;
use warnings;

my @list;

@list = (10,20);
#Array Index beginnt bei 0
print "1. Wert: ", $list[0], "\n";
print "Höchster Index: ", $#list, "\n";
print "Länge des Arrays: ", scalar @list, "\n";
$list[0] = "Regen";
print "1. Wert: ", $list[0], "\n";
print "Höchster Index: ", $#list, "\n";
print "Länge des Arrays: ", scalar @list, "\n";

#Array Index 2 und 3 sind im undef Zustand
$list[4] = "Perl";
print "5. Wert: ", $list[4], "\n";

print "Höchster Index: ", $#list, "\n";
print "Länge des Arrays: ", scalar @list, "\n";

if (defined $list[3]) {
	print "4.Wert : ", $list[3], "\n";
} else {
	print "4.Wert : ", "undefiniert", "\n";
}

#Konstrukt mit Ternaerem Operator
print "4.Wert : ", defined $list[3] ? $list[3] : "undefiniert", "\n";
my @text;
print "Undefinertes Array, Höchster Index:", $#text, "\n";
print "Undefinertes Array, Länge:", scalar @text, "\n";

#Bedingung im if ist immer ein Skalarer Kontext, daher bedeutet @list die Laenge
print "Array hat ein Element, Liste", if @text;

my $len = @list; #Skalarer Kontext
print "Array hat ein Element, Skalare zuweisung \n", if $len;
