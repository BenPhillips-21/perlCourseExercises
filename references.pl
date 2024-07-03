#!/usr/bin/perl 
use v5.10.0;
use strict;
use warnings;

my $friends_ref = [ qw(Bob Joe Steve Diego Jackson Tom OJ) ];

say "My first friend is $friends_ref->[0]";

foreach my $friend (@$friends_ref) {
    say "Friend: $friend";
}



