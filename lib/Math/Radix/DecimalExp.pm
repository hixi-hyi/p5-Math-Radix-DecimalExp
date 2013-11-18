package Math::Radix::DecimalExp;
use 5.008005;
use strict;
use warnings;
use Carp;
use POSIX;

our $VERSION = "0.01";

sub new {
    my ($class, $base) = @_;

    bless {
        base => $base,
    }, $class;
}

sub _to_decimal_exp {
    my ($self, $second, $first) = @_;
    return ($second * $self->{base}) + $first;
}

sub to_radix_exp {
    my ($self, $number) = @_;

    my $first  = $number % $self->{base};
    my $second = floor($number / $self->{base});
    return ($second, $first);
}

sub add_decimal_exp {
    my ($self, $num1, $num2) = @_;

    my $number = $num1 + $num2;
    return $self->to_radix_exp($number);
}

sub sub_decimal_exp {
    my ($self, $num1, $num2) = @_;

    my $number = $num1 - $num2;
    return $self->to_radix_exp($number);
}

sub add_radix_exp {
    my ($self, $radix_exp1, $radix_exp2) = @_;
    if (ref $radix_exp1 ne 'ARRAY' or ref $radix_exp2 ne 'ARRAY') {
        croak 'args must be ARRAYREF';
    }
    my $num1 = $self->_to_decimal_exp(@$radix_exp1);
    my $num2 = $self->_to_decimal_exp(@$radix_exp2);
    return $self->add_decimal_exp($num1, $num2);
}

sub sub_radix_exp {
    my ($self, $radix_exp1, $radix_exp2) = @_;
    if (ref $radix_exp1 ne 'ARRAY' or ref $radix_exp2 ne 'ARRAY') {
        croak 'args must be ARRAYREF';
    }
    my $num1 = $self->_to_decimal_exp(@$radix_exp1);
    my $num2 = $self->_to_decimal_exp(@$radix_exp2);
    return $self->sub_decimal_exp($num1, $num2);
}


1;
__END__

=encoding utf-8

=head1 NAME

Math::Radix::DecimalExp - It's new $module

=head1 SYNOPSIS

    use Math::Radix::DecimalExp;

=head1 DESCRIPTION

Math::Radix::DecimalExp is ...

=head1 LICENSE

Copyright (C) Hiroyoshi Houchi.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

Hiroyoshi Houchi E<lt>git@hixi-hyi.comE<gt>

=cut

