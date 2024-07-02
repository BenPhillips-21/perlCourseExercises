#!/usr/bin/perl
use v5.12.0;
use strict;
use warnings;

my %friends_hobbies = (
    Tom => 'Warhammer',
    Jackson => 'Learning German',
    Steve => 'Poetry'
);

$friends_hobbies{Ronaldo} = 'Futbol';

say $friends_hobbies{Ronaldo};

say $friends_hobbies{Jackson};

$friends_hobbies{Jackson} = 'idk';

say $friends_hobbies{Jackson};

# print $friends_hobbies{"Jeff"};
# Use of uninitialized value in print at facts.pl line 18.

say %friends_hobbies;


