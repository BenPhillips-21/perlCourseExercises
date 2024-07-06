#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Maths' ) || print "Bail out!\n";
}

diag( "Testing Maths $Maths::VERSION, Perl $], $^X" );
