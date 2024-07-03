#!/usr/bin/perl 
use v5.10.0;
use strict;
use warnings;
use Acme::Cow;
 
$cow = new Acme::Cow;
$cow->say("Moo!");
$cow->print();