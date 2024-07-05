#!/usr/bin/perl -w
use strict;
use warnings;
use v5.10.0;
use autodie;

open(my $output, '>', './numbers.txt');

foreach my $value (1..100) {
    print {$output} "$value\n";
}

close $output;

