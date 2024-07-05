#!/usr/bin/perl -w
use strict;
use warnings;
use v5.10.0;
use autodie;
use File::Temp qw(tempfile);

my ($tmp_fh, $tmp_name) = tempfile();

open(my $infile, '<', "numbers.txt");

my @lines = <$infile>;
close $infile;

foreach my $value (@lines) {
    $value++;
    print {$tmp_fh} "$value\n";
}

close $tmp_fh;
rename($tmp_name, "numbers.txt");
