#!/usr/bin/perl
use v5.12.0;    
use strict;     
use warnings;   

# Initialize a sentence
my $sentence = "There's more than one way to do it.";

# Reverse the entire sentence and print it
my $rev = reverse $sentence;
say $rev;  # Output: .ti od ot yaw eno naht erom s'erehT

# Split the sentence into words, reverse the order of words, and store in an array
my @reversed_words = reverse split(" ", $sentence);

# Print the reversed array of words
say "@reversed_words";  # Output: it. do to way one than more There's
# Prints the items of the array in reverse order



# Reverse the words passed via command-line arguments and print them
my @arg_words = reverse @ARGV;
say "@arg_words";

# Join the command-line arguments into a single string
my $le_args = join(" ", @ARGV);

# Reverse the string and print
my $rev2 = reverse $le_args;
say $rev2;