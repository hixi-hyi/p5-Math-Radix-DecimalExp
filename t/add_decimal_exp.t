#!/usr/bin/env perl -Ilib -w
use strict;
use Test::More;
use Math::Radix::DecimalExp;

subtest "bin 2 + x" => sub {
    my $base = Math::Radix::DecimalExp->new(2);
    is_deeply [$base->add_decimal_exp(2, 0)],  [1, 0];
    is_deeply [$base->add_decimal_exp(2, 1)],  [1, 1];
    is_deeply [$base->add_decimal_exp(2, 2)],  [2, 0];
    is_deeply [$base->add_decimal_exp(2, 3)],  [2, 1];
    is_deeply [$base->add_decimal_exp(2, 4)],  [3, 0];
    is_deeply [$base->add_decimal_exp(2, 5)],  [3, 1];
    is_deeply [$base->add_decimal_exp(2, 6)],  [4, 0];
    is_deeply [$base->add_decimal_exp(2, 7)],  [4, 1];
    is_deeply [$base->add_decimal_exp(2, 8)],  [5, 0];
    is_deeply [$base->add_decimal_exp(2, 9)],  [5, 1];
    is_deeply [$base->add_decimal_exp(2, 10)], [6, 0];
};

subtest "oct 7 + x" => sub {
    my $base = Math::Radix::DecimalExp->new(8);
    is_deeply [$base->add_decimal_exp(7, 0)],  [0, 7];
    is_deeply [$base->add_decimal_exp(7, 1)],  [1, 0];
    is_deeply [$base->add_decimal_exp(7, 2)],  [1, 1];
    is_deeply [$base->add_decimal_exp(7, 3)],  [1, 2];
    is_deeply [$base->add_decimal_exp(7, 4)],  [1, 3];
    is_deeply [$base->add_decimal_exp(7, 5)],  [1, 4];
    is_deeply [$base->add_decimal_exp(7, 6)],  [1, 5];
    is_deeply [$base->add_decimal_exp(7, 7)],  [1, 6];
    is_deeply [$base->add_decimal_exp(7, 8)],  [1, 7];
    is_deeply [$base->add_decimal_exp(7, 9)],  [2, 0];
    is_deeply [$base->add_decimal_exp(7, 10)], [2, 1];
};

subtest "oct 8 + x" => sub {
    my $base = Math::Radix::DecimalExp->new(8);
    is_deeply [$base->add_decimal_exp(8, 0)],  [1, 0];
    is_deeply [$base->add_decimal_exp(8, 1)],  [1, 1];
    is_deeply [$base->add_decimal_exp(8, 2)],  [1, 2];
    is_deeply [$base->add_decimal_exp(8, 3)],  [1, 3];
    is_deeply [$base->add_decimal_exp(8, 4)],  [1, 4];
    is_deeply [$base->add_decimal_exp(8, 5)],  [1, 5];
    is_deeply [$base->add_decimal_exp(8, 6)],  [1, 6];
    is_deeply [$base->add_decimal_exp(8, 7)],  [1, 7];
    is_deeply [$base->add_decimal_exp(8, 8)],  [2, 0];
    is_deeply [$base->add_decimal_exp(8, 9)],  [2, 1];
    is_deeply [$base->add_decimal_exp(8, 10)], [2, 2];
};

subtest "oct 9 + x" => sub {
    my $base = Math::Radix::DecimalExp->new(8);
    is_deeply [$base->add_decimal_exp(9, 0)],  [1, 1];
    is_deeply [$base->add_decimal_exp(9, 1)],  [1, 2];
    is_deeply [$base->add_decimal_exp(9, 2)],  [1, 3];
    is_deeply [$base->add_decimal_exp(9, 3)],  [1, 4];
    is_deeply [$base->add_decimal_exp(9, 4)],  [1, 5];
    is_deeply [$base->add_decimal_exp(9, 5)],  [1, 6];
    is_deeply [$base->add_decimal_exp(9, 6)],  [1, 7];
    is_deeply [$base->add_decimal_exp(9, 7)],  [2, 0];
    is_deeply [$base->add_decimal_exp(9, 8)],  [2, 1];
    is_deeply [$base->add_decimal_exp(9, 9)],  [2, 2];
    is_deeply [$base->add_decimal_exp(9, 10)], [2, 3];
};

done_testing;
