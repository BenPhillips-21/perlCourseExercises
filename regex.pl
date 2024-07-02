#!/usr/bin/perl 
use v5.10.0;
use strict;
use warnings;

# The Match Operator

my $bar = "This is foo and again foo";
if ($bar =~ /foo/) {
   print "First time is matching\n";
} else {
   print "First time is not matching\n";
}

$bar = "foo";
if ($bar =~ /foo/) {
   print "Second time is matching\n";
} else {
   print "Second time is not matching\n";
}



my $string = "The food is in the salad bar";
# Perform a regular expression match for the pattern 'foo' in the string
$string =~ m/foo/;

# Print the part of the string before the match
# $` contains the substring before the matched pattern
print "Before: $`\n";

# Print the matched part of the string
# $& contains the matched pattern
print "Matched: $&\n";

# Print the part of the string after the match
# $' contains the substring after the matched pattern
print "After: $'\n";



# Match And Substitute
$string = "The cat sat on the mat";
$string =~ s/cat/dog/;

print "$string\n";



# Assign a string containing digits and letters
my $string = "My phone number is 123-456-7890 and my ID is 98765";

# Use the regular expression to replace all digits with the character '#'
# \d is a meta character that matches any digit (0-9)
# + is a meta character that matches one or more of the preceding element
# s/\d+/#/g replaces all sequences of digits with '#'
$string =~ s/\d+/#/g;

# Print the modified string
print "Modified string: $string\n";

