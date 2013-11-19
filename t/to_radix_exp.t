#!/usr/bin/env perl -Ilib -w
use strict;
use Test::More;
use Math::Radix::DecimalExp;

subtest binary => sub {
    my $base = Math::Radix::DecimalExp->new(2);
    is_deeply [$base->to_radix_exp(0)],  [0, 0];
    is_deeply [$base->to_radix_exp(1)],  [0, 1];
    is_deeply [$base->to_radix_exp(2)],  [1, 0];
    is_deeply [$base->to_radix_exp(3)],  [1, 1];
    is_deeply [$base->to_radix_exp(4)],  [2, 0];
    is_deeply [$base->to_radix_exp(5)],  [2, 1];
    is_deeply [$base->to_radix_exp(6)],  [3, 0];
    is_deeply [$base->to_radix_exp(7)],  [3, 1];
    is_deeply [$base->to_radix_exp(8)],  [4, 0];
    is_deeply [$base->to_radix_exp(9)],  [4, 1];
    is_deeply [$base->to_radix_exp(10)], [5, 0];
};

subtest oct => sub {
    my $base = Math::Radix::DecimalExp->new(8);
    is_deeply [$base->to_radix_exp(1)],  [0, 1];
    is_deeply [$base->to_radix_exp(2)],  [0, 2];
    is_deeply [$base->to_radix_exp(3)],  [0, 3];
    is_deeply [$base->to_radix_exp(4)],  [0, 4];
    is_deeply [$base->to_radix_exp(5)],  [0, 5];
    is_deeply [$base->to_radix_exp(6)],  [0, 6];
    is_deeply [$base->to_radix_exp(7)],  [0, 7];
    is_deeply [$base->to_radix_exp(8)],  [1, 0];
    is_deeply [$base->to_radix_exp(9)],  [1, 1];
    is_deeply [$base->to_radix_exp(10)], [1, 2];
};

subtest hex => sub {
    my $base = Math::Radix::DecimalExp->new(16);
    is_deeply [$base->to_radix_exp(1)],  [0, 1];
    is_deeply [$base->to_radix_exp(2)],  [0, 2];
    is_deeply [$base->to_radix_exp(3)],  [0, 3];
    is_deeply [$base->to_radix_exp(4)],  [0, 4];
    is_deeply [$base->to_radix_exp(5)],  [0, 5];
    is_deeply [$base->to_radix_exp(6)],  [0, 6];
    is_deeply [$base->to_radix_exp(7)],  [0, 7];
    is_deeply [$base->to_radix_exp(8)],  [0, 8];
    is_deeply [$base->to_radix_exp(9)],  [0, 9];
    is_deeply [$base->to_radix_exp(10)], [0, 10];
    is_deeply [$base->to_radix_exp(11)], [0, 11];
    is_deeply [$base->to_radix_exp(12)], [0, 12];
    is_deeply [$base->to_radix_exp(13)], [0, 13];
    is_deeply [$base->to_radix_exp(14)], [0, 14];
    is_deeply [$base->to_radix_exp(15)], [0, 15];
    is_deeply [$base->to_radix_exp(16)], [1, 0];
    is_deeply [$base->to_radix_exp(17)], [1, 1];
    is_deeply [$base->to_radix_exp(18)], [1, 2];
    is_deeply [$base->to_radix_exp(19)], [1, 3];
    is_deeply [$base->to_radix_exp(20)], [1, 4];
};

done_testing;
