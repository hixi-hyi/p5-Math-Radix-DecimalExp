#!/usr/bin/env perl -Ilib -w
use strict;
use Test::More;
use Test::Deep;
use Math::Radix::DecimalExp;

subtest "bin 2 -x " => sub {
    my $base = Math::Radix::DecimalExp->new(2);
    is_deeply [$base->sub_decimal_exp(2, 0)],  [1, 0];
    is_deeply [$base->sub_decimal_exp(2, 1)],  [0, 1];
    is_deeply [$base->sub_decimal_exp(2, 2)],  [0, 0];
    is_deeply [$base->sub_decimal_exp(2, 3)],  [-1, 1];
    is_deeply [$base->sub_decimal_exp(2, 4)],  [-1, 0];
    is_deeply [$base->sub_decimal_exp(2, 5)],  [-2, 1];
    is_deeply [$base->sub_decimal_exp(2, 6)],  [-2, 0];
    is_deeply [$base->sub_decimal_exp(2, 7)],  [-3, 1];
    is_deeply [$base->sub_decimal_exp(2, 8)],  [-3, 0];
    is_deeply [$base->sub_decimal_exp(2, 9)],  [-4, 1];
};


subtest "oct 7 - x" => sub {
    my $base = Math::Radix::DecimalExp->new(8);
    is_deeply [$base->sub_decimal_exp(7, 0)],  [0, 7];
    is_deeply [$base->sub_decimal_exp(7, 1)],  [0, 6];
    is_deeply [$base->sub_decimal_exp(7, 2)],  [0, 5];
    is_deeply [$base->sub_decimal_exp(7, 3)],  [0, 4];
    is_deeply [$base->sub_decimal_exp(7, 4)],  [0, 3];
    is_deeply [$base->sub_decimal_exp(7, 5)],  [0, 2];
    is_deeply [$base->sub_decimal_exp(7, 6)],  [0, 1];
    is_deeply [$base->sub_decimal_exp(7, 7)],  [0, 0];
    is_deeply [$base->sub_decimal_exp(7, 8)],  [-1, 7];
    is_deeply [$base->sub_decimal_exp(7, 9)],  [-1, 6];
    is_deeply [$base->sub_decimal_exp(7, 10)], [-1, 5];
};

subtest "oct 8 - x" => sub {
    my $base = Math::Radix::DecimalExp->new(8);
    is_deeply [$base->sub_decimal_exp(8, 0)],  [1, 0];
    is_deeply [$base->sub_decimal_exp(8, 1)],  [0, 7];
    is_deeply [$base->sub_decimal_exp(8, 2)],  [0, 6];
    is_deeply [$base->sub_decimal_exp(8, 3)],  [0, 5];
    is_deeply [$base->sub_decimal_exp(8, 4)],  [0, 4];
    is_deeply [$base->sub_decimal_exp(8, 5)],  [0, 3];
    is_deeply [$base->sub_decimal_exp(8, 6)],  [0, 2];
    is_deeply [$base->sub_decimal_exp(8, 7)],  [0, 1];
    is_deeply [$base->sub_decimal_exp(8, 8)],  [0, 0];
    is_deeply [$base->sub_decimal_exp(8, 9)],  [-1, 7];
    is_deeply [$base->sub_decimal_exp(8, 10)], [-1, 6];
};

subtest "oct 9 - x" => sub {
    my $base = Math::Radix::DecimalExp->new(8);
    is_deeply [$base->sub_decimal_exp(9, 0)],  [1, 1];
    is_deeply [$base->sub_decimal_exp(9, 1)],  [1, 0];
    is_deeply [$base->sub_decimal_exp(9, 2)],  [0, 7];
    is_deeply [$base->sub_decimal_exp(9, 3)],  [0, 6];
    is_deeply [$base->sub_decimal_exp(9, 4)],  [0, 5];
    is_deeply [$base->sub_decimal_exp(9, 5)],  [0, 4];
    is_deeply [$base->sub_decimal_exp(9, 6)],  [0, 3];
    is_deeply [$base->sub_decimal_exp(9, 7)],  [0, 2];
    is_deeply [$base->sub_decimal_exp(9, 8)],  [0, 1];
    is_deeply [$base->sub_decimal_exp(9, 9)],  [0, 0];
    is_deeply [$base->sub_decimal_exp(9, 10)], [-1, 7];
};

done_testing;
