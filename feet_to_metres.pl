#!/usr/bin/perl 
use strict;
use warnings;
use v5.10.0;

my $feet_to_convert = 21;

sub feet_to_metres {
    my ($feet) = @_;

    my $metres = $feet * 0.3048;

    return $metres;
}

my $metres = feet_to_metres($feet_to_convert);
say $metres;

for (my $i = 1; $i < 10; $i++) {
    my $metres = feet_to_metres($i);
    say $metres;
}

sub batSignal {
    my ($hero, $city, $villain) = @_;

    say "Dear $hero, can you please save $city from $villain, thanks."
}

batSignal("Batman", "Gotham City", "The Joker");


sub mean {
	my @numbers = @_;	# The numbers themselves
	my $count   = @_;	# How many numbers did we get?

	my $sum = 0;

	# Calculate the sum by adding all the numbers.
	foreach my $num (@numbers) {
		$sum += $num;
	}

	return $sum/$count;
}
