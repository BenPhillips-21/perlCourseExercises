#!/usr/bin/perl 
use strict;
use warnings;
use v5.10.0;

my $randNum = int(rand(100) + 1);
my $num_guesses = 0;

say "I am thinking of a random number between 1 and 100.";
say "Guess what number I am thinking of.....";

while (my $input = <STDIN>) {
    say "Enter another guess: ";

    if ($input < 1 || $input > 100) {
        say "Number must be between 1 and 100.";
        next;
    }

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