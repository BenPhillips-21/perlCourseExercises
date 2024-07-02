#!/usr/bin/perl
## Example of interpolation
use strict;
use warnings;

# single quotes don't interpolate...
my $price = '$9.95';

# double quotes interpolate...
my $invoice_item = "24 widgets at $price each\n";

my $invoice_item2 = '24 widgets at $price each\n';

print $invoice_item, $invoice_item2;

# Output: 
# 24 widgets at $9.95 each
# 24 widgets at $price each\n

# Single quotes takes the contents literally so \n will be printed

# Double quotes are like back ticks in JavaScript
