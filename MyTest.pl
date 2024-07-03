#!/usr/bin/perl 
use v5.10.0;
use strict;
use warnings;

package MyTest;

our $PASS_MARK = "60";

sub pass {
    return "Pass";
}

sub fail {
    return "Fail";
}

"You shall not pass!";

