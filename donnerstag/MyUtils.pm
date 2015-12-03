package MyUtils;

use strict;
use warnings;

=head1 NAME 

MyUtils - Meine Werkzeuge

=cut

use Exporter 'import';
our @EXPORT = qw/today_german/; 
our @EXPORT_OK = qw/filelist/;

=head1 SYNOPSIS

 use MyUtils;
 my $heute = today_german;

 use MyUtils qw/filelist/;
 my @dirlist = filelist $directorypath;

=cut

# perl code
# perl code
# perl code
# perl code

=head1 DESCRIPTION

 Viel Beschreibung zum gesamten Modul.
 Der Text wird automatisch als Absatz formatiert und ggf. umgebrochen.

=cut

=head2 1. Unterabschnitt

 Viel Text

=cut

=head3 Details

 Ganz viele Details

=cut

=head2 2. Unterabschnitt

 Viel Text

=cut

sub today_german
{

=head2 today_german


 Beschreibung von today_german


=cut

  my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
  return sprintf('%02d.%02d.%d', $mday, $mon+1, $year+1900);
} 

sub filelist
{
  my $dir = shift;
  opendir(my $dh, $dir);
  my @liste = grep {!/^\.{1,2}$/} readdir $dh;
  #                  /^\.\.?$/
  closedir $dh;
  return @liste;
}

1; #Make Perl happy

=head1 NOTES

 Diese Dokumentation wurde praesentiert von POD - plain old documentation

 Details siehe B<perldoc perlpod>

=cut
