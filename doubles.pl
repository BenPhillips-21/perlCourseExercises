#!/usr/bin/perl
use strict;
use warnings;
use v5.14.0;

$/ = "";

while (<>) {
    while (/(\b\w+)\s+\1\b/g) {
        say $1;
    } 
}


