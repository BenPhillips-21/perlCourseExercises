#!/usr/bin/perl
# A log processing script to find the originating host, date and requested
# page.
use strict;
use warnings;

# Set this to a true value to display unmatched lines at end
# of script execution.

use constant SHOW_UNMATCHED => 0;

my @unmatched;

while(<>) {
	my ($origin, $date, $page) = 
		m{
			(\S+)
            \s\S+\s\S+\s
            \[
            ([^\]]+)
            \]
            \s
            "
            ([^"]+)
            "
		}x;

	if($origin) {
		print "$origin " if defined $origin;
		print "$date "   if defined $date;
		print "$page"   if defined $page;
		print "\n";
	}
	else { 	# Failed match, keep it for later.
		push @unmatched, $_;
	}
}

my $num_unmatched = @unmatched;

print "\n\n", ("-" x 60), "\n";
print "\n\n$num_unmatched line(s) failed to match.\n";

if(SHOW_UNMATCHED and @unmatched) {
	print "The following requests were not matched:\n\n", @unmatched;
}
