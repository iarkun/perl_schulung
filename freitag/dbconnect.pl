#! /usr/bin/perl

use strict;
use warnings;
use DBI; #Datenbank Anbindung

# Alternativ host=<hostname>;port=<port>;dbname=<name>
my $dsn = 'dbi:Pg:dbname=db14';

my $dbh = DBI->connect($dsn, 'nutzer14', 'villa');
#my $dbh = DBI->connect($dsn);

die "Keine Verbindung moeglich\n" unless $dbh;

$dbh->disconnect;
$dbh = undef;
