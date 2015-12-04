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

my $box = Gtk2::HBox->new;

$button = Gtk2::Button->new('Eine Taste');
$button->signal_connect("clicked", \&button_func);
$button->show;
$box->add($button);

my $button2 =Gtk2::Button->new('Meine Taste');
$button2->show;
$box->add($button2);

$box->show;
$window2->set_title('Perl-Kurs');
$window->signal_connect('destroy', sub { Gtk2->main_quit });
$window->add($box);
$window->show;

Gtk2->main; # Main Loop, wartet auf Ereignisse und verteilt sie
