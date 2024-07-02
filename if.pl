#!/usr/bin/perl
use v5.12.0;
use strict;
use warnings;

my $number = $ARGV[0];

unless (defined $number) {
    die "I need a number input on the command line \n";
}

if ($number < 3) {
    say "Too small";
} elsif ($number > 7) {
    say "Too big";
} else {
    say "Just right";
}

my $first_name = "Benjamin";
my $last_name = "Phillips";

if ($last_name lt $first_name) {
    say $last_name;
} else {
    say $first_name;
}