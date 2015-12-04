#! /usr/bin/perl

use strict;
use warnings;
use DBI;	# Datenbank-Anbindung

sub cd_add
{
  my $conn = shift;
  my $sql = qq{INSERT INTO cds
	       (cdtitle,cdinterpret,price,location)
	       VALUES ('Tubular Bells',
	       	       'Mike Oldfield',
		       13.95,
		       'Regal')
  	      };
  my $sth = $conn->prepare($sql);
  $sth->execute;
}

# Alternativ host=<hostname>;port=<port>;dbname=<name>
my $dsn = 'dbi:Pg:dbname=db14';

# Username und Passwort sind optional, insbesondere auf localhost
my $dbh = DBI->connect($dsn, 'nutzer14', 'villa');

die "Keine Verbindung moeglich\n" unless $dbh;

cd_add $dbh;

$dbh->disconnect;
$dbh = undef;
