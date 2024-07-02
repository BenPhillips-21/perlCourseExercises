#!/usr/bin/perl 
use strict;
use warnings;
use v5.10.0;

my $randNum = int(rand(100));
my $num_guesses = 0;

while (my $input = <STDIN>) {
    chomp $input;
    
    if ($input == $randNum) {
        $num_guesses++;
        say "You guessed my number!!";
        say "You took $num_guesses guesses to get it.";
        last;
    } elsif ($input < $randNum) {
        say "Higher!";
        $num_guesses++;
    } else {
        say "Lower!";
        $num_guesses++;
    }
}