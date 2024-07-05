#!/usr/bin/perl -w
use strict;
use warnings;
use v5.10.0;
use autodie;

open(my $log_fh, '>>', './numbers.txt');

while (my $input = <STDIN>) {
    chomp $input;
    next if $input eq "Done";
    print {$log_fh} "$input\n";
}

say "Closing file...";
close $log_fh;