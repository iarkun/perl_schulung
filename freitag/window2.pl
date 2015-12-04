#! /usr/bin/perl

use strict;
use warnings;
use Gtk2;
init Gtk2;

my $window = Gtk2::Window->new;
my $window2 = Gtk2::Window->new;
$window2->show;

my $button = Gtk2::Button->new('Eine Taste');
$button->show;
$window->add($button);
$window->show;
Gtk2->main;
