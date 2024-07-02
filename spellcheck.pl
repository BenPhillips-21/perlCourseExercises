#!/usr/bin/perl 
# The file spellcheck.txt has some sample text in it.
# Call this script as "./spellcheck.pl spellcheck.txt"
use strict;
use warnings;

while (<>) {
    s{freind}   {friend}g;   # Correct freind to friend on entire line.
    s{teh}      {the}g;
    s{jsut}     {just}g;
    s{pual}     {Paul}ig;    # Correct (case insensitive) all occurrences
                             # of "pual" (or "Pual" or "PuAl" etc)
    s{wasnt}    {was not}g;
    s{becoz}    {because}g;
    print;
}