#!/usr/bin/perl

use strict;
use warnings;


	

	  # Create a user agent object
         use LWP::UserAgent;
         my $ua = LWP::UserAgent->new;
         $ua->agent('Wget/1.0.10');

         # Create a request
        # my $req = HTTP::Request->new(POST => 'http://diyanet.gov.tr/tr/PrayerTime/PrayerTimesList');
	 my $req = HTTP::Request->new(POST => 'http://www.igmg.org/service/gebetskalender.html');
         $req->content_type('application/x-www-form-urlencoded');
         $req->content('query=libwww-perl&Deutschland=Bremen&Monat=Dezember');

         # Pass request to the user agent and get a response back
         my $res = $ua->request($req);

         # Check the outcome of the response
         if ($res->is_success) {
             print $res->content;
         }
         else {
             print $res->status_line, "\n";
         }

