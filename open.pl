#!/usr/bin/perl -w
use strict;
use warnings;
use v5.10.0;
use autodie;

$ARGV[0] or die "Usage: $0 filename\n";

open(my $file, '<', $ARGV[0]);

while (<$file>) {
    if (not m/\#/) {
        print;
    } 
}