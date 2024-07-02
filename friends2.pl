#!/usr/bin/perl 
use v5.12.0;
use strict;
use warnings;

my %num_of_cars = (
        Bob     => 1,           # Bob has 1 car
        Jane    => 2,           # Jane has 2 cars
        Geoff   => 1,		# Geoff has 1 car
        Anne    => 0,		# Anne doesn't own a car
        Jack    => 0,           # Jack doesn't own a car
        Paul    => undef,       # Paul didn't answer the question
        Polly	=> undef,	# Neither did Polly
);

# Andrew isn't our friend (he's not in the hash)

my $friend_input = $ARGV[0];
my $friend = ucfirst($friend_input);

if (not defined $num_of_cars{$friend} or not exists $num_of_cars{$friend}) {
    die "$friend did not answer or is not our friend.";
} 

my $num_cars = $num_of_cars{$friend};

if ( $num_cars > 1 ) {
    say "$friend has more than one car.";
} elsif ( $num_cars == 1 ) {
    say "$friend has a car.";
} else {
    say "$friend is a broke bum with no car.";
}