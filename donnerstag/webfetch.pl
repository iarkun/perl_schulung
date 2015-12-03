#! /usr/bin/perl

use strict;
use warnings;
use LWP::UserAgent;
use Text::Iconv;

sub today_german
{
  my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
  return sprintf('%02d.%02d.%d',  $mday, $mon+1, $year+1900);
}

sub read_page {
	my $url = shift;
	my $ua = LWP::UserAgent->new;
	$ua->agent('Wget/1.0.10');
  
  	print STDERR $url."\n";
	
	my $response = $ua->get($url);

	if ($response->is_success) {
	  return $response->decoded_content;
	} else {
	  #Fehler-Informationen $response->status_line
	  return undef;
	}
}

sub parse_page{
	my $content = shift;
	####UTF Convert
	my $converter = Text::Iconv->new('utf8', 'utf8');
	
	my @liste;
	# $content an Zeilenumbruch auftrennen
	foreach (split /\n/, $content) {
	next unless m!<div class="box_adress"><h2>([^<]+)</h2>!;
#	push @liste, $1;	# $1 aus der Gruppierung im RegEx
	push @liste, $converter->convert($1);	# $1 aus der Gruppierung im RegEx
	}
	return @liste;
}

#my $timestamp = time;
my $today = today_german;
#my $url2 = qq{http://www.aponet.de/service/notdienstapotheke-finden/suchergebnis/$today/55469%2BSimmern%252FHunsr%25C3%25BCck/-/50.html?as=0};
my $url = qq{http://www.aponet.de/service/notdienstapotheke-finden/suchergebnis/$today/55469%2Bsimmern.html};
my $page = read_page $url;
print "Seite geladen\n" if $page;
die "Seite konnte nicht geladen werden\n" unless $page;
#print $page;
my @notdienste = parse_page $page;
my $nr=0;
printf "%02d. %s\n", ++$nr, $_ foreach @notdienste;
