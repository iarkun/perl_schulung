#! /usr/bin/perl

use strict;
use warnings;

#Deklaration
my $var1;

#Initialisierung
$var1="Hallo";

#Deklaration und Initialisierung in einem Schritt
my $var2="Welt";
# Punkt-Operator verbindet Strings (Cat Concatenator)
my $text=$var1." ".$var2;

print $text,"!\n";

#Deklaration
my $strich;

#Initialisierung
# x-Operator multipliziert Strings 25 x -
$strich = "-" x 25;

print $strich,"\n";
