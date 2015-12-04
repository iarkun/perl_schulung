#! /usr/bin/perl

use strict;
use warnings;
use Auto;
use Data::Dumper;
use Mini;

#print "Aufruf als 'statische' Methode:\n";
#Auto::new('1.Parameter');

print "Aufruf als Konstruktor einer Klasse:\n";
my $object = Auto->new('Herbie');

# Besonderheit: Beim Objekt-Orientierten Methodenaufruf wird der Teil
#  links von der Methode via unshift in @_ kopiert

print "$object\n";
printf "Der Name lautet %s\n", $object->get_name();
print Dumper $object;

my $kopie = Auto->new('Herbie2');
print "$kopie\n";
printf "Der Name lautet %s\n", $kopie->get_name();
print Dumper $kopie;
$kopie->set_name('Ilyas');
printf "Der Name lautet %s\n", $kopie->get_name();
$kopie = undef; # Objekt freigegeben

my $cooper = Mini->new('Coop');
printf "Mini Cooper mit Name %s\n", $cooper->get_name();
print Dumper $cooper;
