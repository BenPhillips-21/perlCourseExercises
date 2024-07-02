#!/usr/bin/perl 
use strict;
use warnings;
use v5.10.0;

# Loop through each line of input
while(<>) {
    chomp;  # Remove the newline character from the end of the input line

    # A regular expression to match a price in the format $x.xx
    # \d* matches zero or more digits
    # \. matches the literal dot character
    # \d{2} matches exactly two digits
    # \b matches a word boundary to ensure the price is not part of a larger word
    print "$_ That's a price!\n" if(/\$\d*\.\d{2}\b/);

    # A regular expression to match the word "colour" or "color"
    # u? matches zero or one occurrence of the letter 'u'
    print "$_ That's colo[u]r!\n" if(/colou?r/);

    # A regular expression to match any four-letter word
    # \b matches a word boundary to ensure it's a standalone word
    # \w{4} matches exactly four word characters (letters, digits, or underscores)
    # \b matches a word boundary to ensure it's a standalone word
    print "$_ Shh! That's a 4 letter word!\n" if(/\b\w{4}\b/);

    # A regular expression to match the name "Ben"
    # Matches the exact string "Ben"
    print "$_ Includes your name!\n" if (/\bBen\b/);

    # A regular expression to match a blank line
    print "Blank line.\n" if /^\s*$/;
}
