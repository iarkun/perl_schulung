#! /usr/bin/perl

use strict;
use warnings;
#my $shell_date = `date -d now+1day +%d.%m.%Y`;
sub today_german
{
  my ($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime(time);
  return sprintf('%02d.%02d.%d',  $mday, $mon+1, $year+1900);
}

printf "Heute ist %s\n", today_german;
