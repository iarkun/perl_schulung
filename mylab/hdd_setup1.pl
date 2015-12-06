#! /usr/bin/perl

use strict;
use warnings;

sub read_partitions
{
 my $device = shift;
 my $path = '/dev/'.$device;
 die "Device $device ist kein Block-Device\n" unless -b $path;
 my $partitions;
 my $cmd = sprintf("sudo partx --show -b -g %s", $path);
 open my $fh, '-|', $cmd or die "Kann partx nicht ausfuehren\n";
 #scalar <$fh>; Erste Zeile bei Bedarf loeschen. z.B. Kopfzeile.
 while (<$fh>) {
	next unless /
			^ 	#Zeilenanfang
			\s* 	#Beliebig viele WhiteSpace
			(\d+) 	#Nummer der Partition
			\s+	#min 1 Whitespace
			(\d+)	#Startsektor
			\s+	#min 1 Whitespace
			(\d+)	#Endsektor
			\s+	#min 1 Whitespace
			(\d+)	#Anzahl Sektoren
			\s+	#min 1 Whitespace
			(\d+)	#Groesse der Partition
			\s+	#min 1 Whitespace
			(\S+)	#UUID, min. 1 non-Whitespace
			$	#Zeilenende
			/x;
	push @$partitions, {	'num' => $1,
				'start' => $2,
				'end' => $3,
				'uuid' => $6};


 }
 
 close $fh;
 return $partitions;
}

sub write_partitions_to_file
{
	my $path = '/dev/'.shift;
	my $info = shift;
	my $output_file = shift;

	open my $fh, '>', $output_file or die "Kann $output_file nicht schreiben\n";

	print $fh "#! /bin/sh\n";
	printf $fh "test -b %s || (echo %s existiert nicht; exit 2)\n", $path, $path;
	printf $fh "dd if=/dev/zero of=%s bs=512 count=1\n", $path;
	printf $fh "install-mbr %s\n", $path;
	
	foreach my $part (@$info) {
	printf $fh "partition-create --dev %s --num %d --start %d --end %d\n",$path,$part->{num}, $part->{start}, $part->{end};
	}
	close $fh;
}

my $diskinfo = read_partitions 'sda';
#use Data::Dumper;
#print Dumper $diskinfo; 
write_partitions_to_file 'sda', $diskinfo, '/tmp/sda.sh';

