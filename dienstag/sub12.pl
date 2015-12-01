#! /usr/bin/perl

use strict;
use warnings;

if (@ARGV) {
 print "Es wurden Parameter auf der Kommandozeile ausgegeben !\n";
 print "Parameter: ", $_, " \n" foreach @ARGV;
}
