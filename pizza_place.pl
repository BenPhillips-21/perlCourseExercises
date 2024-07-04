#!/usr/bin/perl 
use v5.10.0;
use strict;
use warnings;

# A hash of pizza prices
my %pizza_prices = (
	small  =>  5,
	medium =>  8,
	large  => 10,
);

# Add hashes of pasta and milkshake prices
my %pasta_prices = (
    small => 4,
    medium => 8,
    large => 12
);

my %milkshake_prices = (
    small => 3,
    medium => 4,
    large => 5
);

# A menu hash (this will include references to the above hashes)
my %menu = (
	pizza => \%pizza_prices,
	pasta => \%pasta_prices,
	milkshake => \%milkshake_prices
);

# # Printing out the cost of a large pizza.
print "A large pizza will cost: $menu{pizza}{large}\n";

# # Accepting food type and size from the user
# print "What kind of food would you like?\n";
# my $type = <STDIN>;
# chomp $type;

# print "What size $type would you like?\n";
# my $size = <STDIN>;
# chomp $size;

# # Print out the cost
# print "The cost of a $size $type is: ......\n";