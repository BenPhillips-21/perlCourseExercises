#!/usr/bin/perl 
use v5.10.0;
use strict;
use warnings;

BEGIN { require "./MyTest.pl"; }


sub testRun {
    my ($pass_mark) = @_;

    for (my $i = 0; $i < 10; $i++) {
       my $rand_score = int(rand(100) + 1);

       if ($rand_score <= $pass_mark) {
        say MyTest::fail();
       } else {
        say MyTest::pass();
       }
}
}

testRun($MyTest::PASS_MARK);