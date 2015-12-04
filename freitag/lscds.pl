#! /usr/bin/perl

use strict;
use warnings;
use DBI;	# Datenbank-Anbindung

sub list_cds
{
  my $connection = shift;
  my $table = shift;
  my $sql = qq{SELECT *
               FROM $table
	       WHERE id < 10 AND location = 'Regal'
	       ORDER BY price
	       };
  my $sth = $connection->prepare($sql);
  my $rv = $sth->execute;
  # Alternativen: fetchrow_array, fetchrow_arrayref, fetchrow_hashref
  while (my @row = $sth->fetchrow_array) {
    printf "%2d %-30s %-30s %7.2f %s\n", @row;
  }
  $sth->finish;  # Evtl. noch ausstehende Daten interessieren nicht mehr
}

# Alternativ host=<hostname>;port=<port>;dbname=<name>
my $dsn = 'dbi:Pg:dbname=db14';

# Username und Passwort sind optional, insbesondere auf localhost
my $dbh = DBI->connect($dsn, 'nutzer14', 'villa');

die "Keine Verbindung moeglich\n" unless $dbh;

list_cds $dbh, "cds";

$dbh->disconnect;
$dbh = undef;
