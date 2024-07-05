#!/usr/bin/perl 
use strict;
use warnings;
use v5.10.0;
use autodie;

my ($src, $dst) = @ARGV;

unless ($src and $dst) {
    die "Usage: $0 src dst\n";
}

open(my $in_fh, '<', $src);
open(my $Out_fh, '>', $dst);

while (<$in_fh>) {
    print {$out_fh} $_;
}

close $in_fh;
close $out_fh;

