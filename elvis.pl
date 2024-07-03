#!/usr/bin/perl 
# This program identifies Elvis in all the legal name combinations
use strict;
use warnings;

while (<>) {
	chomp;
    
	if (/\bElvis (A(\.|a?ron) )?Presley\b/) {
		print "That's Elvis. ($_)\n"
	} else {
		print "That's not Elvis. ($_)\n";
	}
}