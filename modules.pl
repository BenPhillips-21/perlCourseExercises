#!/usr/bin/perl 
use v5.10.0;
use strict;
use warnings;
use File::Copy qw(copy);

my ($src, $dst) = @ARGV;

unless ($src and $dst) {
    print "Source? ";
    chomp ($src = <STDIN>);

    print "Destination? ";
    chomp ($dst = <STDIN>);

    copy($src, $dst) or die "Copy failed: $!";
}
