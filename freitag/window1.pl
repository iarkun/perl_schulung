#! /usr/bin/perl

use strict;
use warnings;
use Gtk2;
init Gtk2;

my $window = Gtk2::Window->new;
$window->show;

my $button = Gtk2::Button->new('Eine Taste');
$button->show;
$window->add($button);
Gtk2->main;
