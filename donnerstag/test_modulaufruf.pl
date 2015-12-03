#! /usr/bin/perl

use strict;
use warnings;

#BEGIN {
#unshift @INC, '/home/nutzer14/donnerstag';
#}
# use lib '/home/nutzer14/perl_schulung/donnerstag';
# Alternativ in der Shell (.bashrc) setzen:
# PERL5LIB=/home/nutzer14/perl_schulung/donnerstag; export PERL5LIB

use lib '/home/nutzer14/perl_schulung/donnerstag';

use MyUtils;
use MyUtils qw/filelist/;

printf "Heute ist %s\n", today_german;
my @list = filelist $ENV{HOME}.'/perl_schulung/mittwoch'; 
