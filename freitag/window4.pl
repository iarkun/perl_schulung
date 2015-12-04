#! /usr/bin/perl

use strict;
use warnings;
use Gtk2;
init Gtk2;

my $button;

sub button_func

{
  print "Taste gedrueckt\n";
  $button->set_label('Hallo');
}

my $window = Gtk2::Window->new;
my $window2 = Gtk2::Window->new;
$window2->set_title('2.Fenster');
$window2->show;

$button = Gtk2::Button->new('Eine Taste');
$button->signal_connect("clicked", \&button_func);
$button->show;
$window->add($button);
$window2->set_title('Perl-Kurs');
$window->signal_connect('destroy', sub { Gtk2->main_quit });
$window->show;
Gtk2->main;
