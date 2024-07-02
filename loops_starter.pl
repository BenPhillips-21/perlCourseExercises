#!/usr/bin/perl 
use strict;
use warnings;
use v5.10.0;

# An example hash
my %interesting_fact_about = (
        "Grace Hopper"     =>  "invented compilers",
        "Barbara Liskov"   =>  "invented CLU and Argus",
        "Jean E Sammet"    =>  "invented FORMAC",
        "Linus Torvalds"   =>  "invented Linux",
        "Larry Wall"       =>  "invented Perl",
        "Guido Van Rossen" =>  "invented Python",
        "Bill Gates"       =>  "invented PC software licensing fees",
);

# Modify this loop to print the keys and values of the hash.  
# For example: "Grace Hopper invented compilers".
foreach my $person (keys %interesting_fact_about) {
    print "$person ", "$interesting_fact_about{$person}\n";
}

# Array for questions 2 - 4
my @quotes = (
        "Madness takes its toll; please have correct change.",
        "How do I set my laser printer to STUN?",
        "Why is the symbol for anarchy always written the same way?",
        "Any sufficiently advanced magic is indistinguishable from technology",
        "I could tell you, but then I'd have to reboot you.",
        "Real girls don't knit, they perl script.",
);

for (my $i = 0; $i < @quotes; $i++) {
    say $quotes[$i], " $i";
}

my $count = 1;

while ($count <= @quotes) {
    say $quotes[$count - 1], " $count";
    $count++;
}

my $i = 1;
foreach my $quote (@quotes) {
	print "$i: $quote\n";
	$i++;
}
