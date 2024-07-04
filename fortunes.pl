#!/usr/bin/perl 
use strict;
use warnings;
use v5.10.0;
use English;

local $INPUT_RECORD_SEPARATOR = "\n%\n";

my $count = 0;
my $smiley_count = 0;

while (<>) {
    $count++;
    if (/\Q:-)\E$/msx) {
        say;
        $smiley_count++;
    }
}

say "Total records processed: $count";
say "Total records ending with ':-)': $smiley_count";

