#!/usr/bin/perl
use v5.12.0;
use strict;
use warnings;

my $string = "There's more than one way to do it";
say uc($string);

my $input = $ARGV[0];
say substr($input, 2, 1);

my $foxString = "The quick brown fox jumps over the lazy dog.";
say substr($foxString, 16, 3, "puddy cat");
say $foxString;
