#!/usr/bin/perl
use strict;
use warnings;
use v5.14.0;

while (<>) {
    if (s/(?<first>\w+)\s.*(?<last>\b\w+)/$+{last} $+{first}/) {
        print "$_\n";
    }
}

