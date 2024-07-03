#!/usr/bin/perl 
use v5.10.0;
use strict;
use warnings;

use FindBin qw($Bin);
use lib "$Bin/p5lib";

use MyTest qw(pass fail $PASS_MARK);

sub testRun {
    my ($pass_mark) = @_;

    foreach (1..10) {
       my $rand_score = int(rand(100) + 1);

       if ($rand_score <= $pass_mark) {
        say fail();
       } else {
        say pass();
       }
}
}

testRun($PASS_MARK);