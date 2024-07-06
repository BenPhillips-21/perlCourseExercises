package Maths;

use 5.006;
use strict;
use warnings;
use Carp;
use base qw(Exporter);

our @EXPORT_OK = qw(sum product mean median mode);

=head1 NAME

Maths - Basic Maths functions.

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.01';

=head1 SYNOPSIS

    use Maths qw(sum product);

    my $sum_total     = sum(1..5);
    my $product_total = product(1..5);

    use Maths qw(mean median mode);

    my $mean   = mean(@list);
    my $median = median(@list);
    my $mode   = mode(@list);

    my @modes  = modes(@list);

=head1 SUBROUTINES/METHODS

=head2 sum

    use Maths qw(sum);

    my $sum_total = sum(1..5);

Returns the numerical sum of all the arguments.

=cut

sub sum {
    my @values = @_;

    if(my $error = _check_input(@values)) {
        croak $error;
    }

    my $total = 0;
    foreach my $value (@values) {
        $total += $value;
    }
    return $total;
}


=head2 product

    use Maths qw(product);

    my $product_total = product(1..5);

Returns the numerical product of all the arguments.

=cut

sub product {
    my @values = @_;

    if(my $error = _check_input(@values)) {
        croak $error;
    }

    my $total = 1;
    foreach my $value (@values) {
        $total *= $value;
    }
    return $total;
}

=head2 mean

    use Maths qw(mean);

    my $mean = mean(@list);

The mean is the "common average".  That is the sum of all the values 
divided by the count of those values.

=cut

sub mean {
    my @values = @_;

    if(my $error = _check_input(@values)) {
        croak $error;
    }

    # The mean is the sum of all the values, divided by the count of values
    my $mean = sum(@values) / @values;
    return $mean;
}

=head2 median

    use Maths qw(median);

    my $median = median(@list);

The median is the middle number in an ordered set of values.  So the list of
values [1, 3, 2, 4, 1] has the median 2.

=cut

sub median {
    my @values = @_;

    if(my $error = _check_input(@values)) {
        croak $error;
    }

    # Order the values
    @values = sort { $a <=>$b } @values;

    # If the value set is odd, return the middle value
    if( @values % 2 ) {
        return $values[ @values/2 ];
    }
    # otherwise return the mean of the middle two values.
    else {
        return ($values[ @values/2 -1 ] + $values[ @values/2]) / 2;
    }
}

=head2 mode

    use Maths qw(mode);

    my $mode = mode(@list);

    my @modes = mode(@list);

Also known as the score, the mode is the most commonly occuring number in a set. If the set 
is multimodal (has more than one equally occurring "most common" number, then a list will
be returned).

=cut

sub mode {
    my @values = @_;

    if(my $error = _check_input(@values)) {
        croak $error;
    }

    # Count how often each value occurs
    my %values;
    foreach my $value (@values) {
        $values{$value}++;
    }

    # Sort by occurences
    my @occurs = sort { $values{$b} <=> $values{$a} } @values;


    # Put the most commonly occuring number on straight away
    my @modes;
    push @modes, shift @occurs;

    # Remember what that was
    my $last_seen = $modes[0];

    # Collect all the other modes
    foreach my $value ( @occurs ) {
        next if $value == $last_seen;       # Don't repeat modes we've seen
        last if $values{$value} != $values{$modes[0]};  # Only interested in the most common values
        push @modes, $value;
        $last_seen = $value;
    }

    # If we only have one mode, and we're being asked for a scalar give them a scalar
    if(@modes == 1 && ! wantarray()) {
        return shift @modes;
    }
    # Otherwise give themthelist
    else {
        return @modes;
    }
}


sub _check_input {
    my @values = @_;

    # Throw error on no values
    unless(@values) {
        return "It doesn't make any sense to call this function with no arguments";
    }
    # Throw error on non-numeric values
    if( (grep /^\s*[+-]?\d+(\.\d+)?\s*$/, @values) != @values ) {
        return "Non numeric input in [@values]";
    }

    return;
}


=head1 AUTHOR

Jacinta Richardson, C<< <contact at perltraining.com.au> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-maths at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Maths>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Maths


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Maths>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Maths>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Maths>

=item * Search CPAN

L<http://search.cpan.org/dist/Maths/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2011 Jacinta Richardson.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


=cut

1; # End of Maths
