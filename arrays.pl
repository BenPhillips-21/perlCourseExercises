#!/usr/bin/perl
use v5.12.0;    
use strict;     
use warnings;   

# Split a sentence into words and store them in an array
my @words = split(' ', "The quick brown fox jumps over the lazy dog.");
# Print the fourth word (index starts from 0)
say $words[3];  # Output: fox

# Generate and print a random number between 0 and 9
say(int(rand(10)));

# Initialize an array with names
my @array = qw(Bob Joe Tom Jackson Steve Remus);

# Generate a random index between 0 and 5 (inclusive)
my $random = int(rand(6));  # Changed from 5 to 6 to include all elements

# Print a random name from the array
say $array[$random];


# Add new elements to the array
push @array, "Ron", "Chungus";

# Print the modified array
say "@array";  # Output: Bob Joe Tom Jackson Steve Remus Ron Chungus




