#!/usr/bin/perl
use v5.12.0;
use strict;
use warnings;

my @friends = qw(Bob Joe Tom Jackson Steve Remus);

say "@friends";

say $friends[2];

say $friends[-1];

say @friends[1..3];

$friends[0] = "John";

say $friends[0];

# Output:
# Bob Joe Tom Jackson Steve Remus
# Tom
# Remus
# JoeTomJackson
# John