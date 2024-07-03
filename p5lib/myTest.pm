#!/usr/bin/perl 
use v5.10.0;
use strict;
use warnings;

package MyTest;

use base qw(Exporter);

our @EXPORT_OK = qw(pass fail $PASS_MARK);

our $PASS_MARK = "60";

=head1 SUBROUTINES

=head2 pass()

Prints a message that the student has passed.
For example: 

    say pass();

=cut

sub pass {
    return "Pass";
}

=head2 fail()

Prints a message that the student has failed.

For example: 

    say fail();

=cut

sub fail {
    return "Fail";
}

"You shall not pass!";

