#! /usr/bin/perl

use strict;
use warnings;
use DBI; #Datenbank Anbindung

sub import_cd {

  my $conn = shift;
  my $cd = shift;
  my $path = shift;

  my $sql = q{INSERT INTO songs(cd,track,interpret,title) VALUES (?,?,?,?)};
  my $sth = $conn->prepare($sql);
  open my $fh, '<', $path or return;
  while (<$fh>) {
   chomp;
   my @data = split /\t/; # $_ am <TAB> aufteilen
   unshift @data, $cd;
   $sth->execute(@data);
  }

}

# Alternativ host=<hostname>;port=<port>;dbname=<name>
my $dsn = 'dbi:Pg:dbname=db14';

my $dbh = DBI->connect($dsn, 'nutzer14', 'villa');
#my $dbh = DBI->connect($dsn);

die "Keine Verbindung moeglich\n" unless $dbh;
# Sicherstellen, dass 2 Parameter angegeben wurden
die "Nicht ausreichend Parameter angegeben\n" unless @ARGV == 2;

# shift ohne Array im Hauptprogramm nimmt automatisch @ARGV {anstatt @_}
my $cdnum = shift;
my $path = shift;

import_cd $dbh, $cdnum, $path;

$dbh->disconnect;
$dbh = undef;
