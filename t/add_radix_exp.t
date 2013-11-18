#!/usr/bin/env perl -Ilib -w
use strict;
use Test::More;
use Math::Radix::DecimalExp;

subtest "oct [0,7] + x" => sub {
    my ($second, $first);
    my $base = Math::Radix::DecimalExp->new(8);
    is_deeply [$base->add_radix_exp([0, 7], [0, 0])],  [0, 7];
    is_deeply [$base->add_radix_exp([0, 7], [0, 1])],  [1, 0];
    is_deeply [$base->add_radix_exp([0, 7], [0, 2])],  [1, 1];
    is_deeply [$base->add_radix_exp([0, 7], [0, 3])],  [1, 2];
    is_deeply [$base->add_radix_exp([0, 7], [0, 4])],  [1, 3];
    is_deeply [$base->add_radix_exp([0, 7], [0, 5])],  [1, 4];
    is_deeply [$base->add_radix_exp([0, 7], [0, 6])],  [1, 5];
    is_deeply [$base->add_radix_exp([0, 7], [0, 7])],  [1, 6];
    is_deeply [$base->add_radix_exp([0, 7], [0, 8])],  [1, 7];
    is_deeply [$base->add_radix_exp([0, 7], [0, 9])],  [2, 0];
    is_deeply [$base->add_radix_exp([0, 7], [0, 10])], [2, 1];
};

subtest "oct [1,0] + x" => sub {
    my ($second, $first);
    my $base = Math::Radix::DecimalExp->new(8);
    is_deeply [$base->add_radix_exp([1, 0], [0, 0])],  [1, 0];
    is_deeply [$base->add_radix_exp([1, 0], [0, 1])],  [1, 1];
    is_deeply [$base->add_radix_exp([1, 0], [0, 2])],  [1, 2];
    is_deeply [$base->add_radix_exp([1, 0], [0, 3])],  [1, 3];
    is_deeply [$base->add_radix_exp([1, 0], [0, 4])],  [1, 4];
    is_deeply [$base->add_radix_exp([1, 0], [0, 5])],  [1, 5];
    is_deeply [$base->add_radix_exp([1, 0], [0, 6])],  [1, 6];
    is_deeply [$base->add_radix_exp([1, 0], [0, 7])],  [1, 7];
    is_deeply [$base->add_radix_exp([1, 0], [0, 8])],  [2, 0];
    is_deeply [$base->add_radix_exp([1, 0], [0, 9])],  [2, 1];
    is_deeply [$base->add_radix_exp([1, 0], [0, 10])], [2, 2];
};

subtest "oct [1,1] + x" => sub {
    my ($second, $first);
    my $base = Math::Radix::DecimalExp->new(8);
    is_deeply [$base->add_radix_exp([1, 1], [0, 0])],  [1, 1];
    is_deeply [$base->add_radix_exp([1, 1], [0, 1])],  [1, 2];
    is_deeply [$base->add_radix_exp([1, 1], [0, 2])],  [1, 3];
    is_deeply [$base->add_radix_exp([1, 1], [0, 3])],  [1, 4];
    is_deeply [$base->add_radix_exp([1, 1], [0, 4])],  [1, 5];
    is_deeply [$base->add_radix_exp([1, 1], [0, 5])],  [1, 6];
    is_deeply [$base->add_radix_exp([1, 1], [0, 6])],  [1, 7];
    is_deeply [$base->add_radix_exp([1, 1], [0, 7])],  [2, 0];
    is_deeply [$base->add_radix_exp([1, 1], [0, 8])],  [2, 1];
    is_deeply [$base->add_radix_exp([1, 1], [0, 9])],  [2, 2];
    is_deeply [$base->add_radix_exp([1, 1], [0, 10])], [2, 3];
};

done_testing;
