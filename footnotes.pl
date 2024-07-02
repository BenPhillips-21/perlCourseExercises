#!/usr/bin/perl 
use v5.10.0;
use strict;
use warnings;

while (<>) {
	s/\[[0-9]+\]//g;
	print;
}

