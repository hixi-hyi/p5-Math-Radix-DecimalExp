#!/usr/bin/env perl -Ilib -w
use strict;
use Test::More;
use Math::Radix::DecimalExp;

subtest "bin [1,0] - x" => sub {
    my $base = Math::Radix::DecimalExp->new(2);
    is_deeply [$base->sub_radix_exp([1, 0], [0, 0])], [1, 0];
    is_deeply [$base->sub_radix_exp([1, 0], [0, 1])], [0, 1];
    is_deeply [$base->sub_radix_exp([1, 0], [1, 0])], [0, 0];
    is_deeply [$base->sub_radix_exp([1, 0], [1, 1])], [-1, 1];
    is_deeply [$base->sub_radix_exp([1, 0], [2, 0])], [-1, 0];
    is_deeply [$base->sub_radix_exp([1, 0], [2, 1])], [-2, 1];
    is_deeply [$base->sub_radix_exp([1, 0], [3, 0])], [-2, 0];
    is_deeply [$base->sub_radix_exp([1, 0], [3, 1])], [-3, 1];
    is_deeply [$base->sub_radix_exp([1, 0], [4, 0])], [-3, 0];
    is_deeply [$base->sub_radix_exp([1, 0], [4, 1])], [-4, 1];
    is_deeply [$base->sub_radix_exp([1, 0], [5, 0])], [-4, 0];
};

subtest "bin [0,0] - x(overflow exp)" => sub {
    my $base = Math::Radix::DecimalExp->new(2);
    is_deeply [$base->sub_radix_exp([1, 0], [0, 0])],  [1, 0];
    is_deeply [$base->sub_radix_exp([1, 0], [0, 1])],  [0, 1];
    is_deeply [$base->sub_radix_exp([1, 0], [0, 2])],  [0, 0];
    is_deeply [$base->sub_radix_exp([1, 0], [0, 3])],  [-1, 1];
    is_deeply [$base->sub_radix_exp([1, 0], [0, 4])],  [-1, 0];
    is_deeply [$base->sub_radix_exp([1, 0], [0, 5])],  [-2, 1];
    is_deeply [$base->sub_radix_exp([1, 0], [0, 6])],  [-2, 0];
    is_deeply [$base->sub_radix_exp([1, 0], [0, 7])],  [-3, 1];
    is_deeply [$base->sub_radix_exp([1, 0], [0, 8])],  [-3, 0];
    is_deeply [$base->sub_radix_exp([1, 0], [0, 9])],  [-4, 1];
    is_deeply [$base->sub_radix_exp([1, 0], [0, 10])], [-4, 0];
};

subtest "oct [0,7] - x" => sub {
    my $base = Math::Radix::DecimalExp->new(8);
    is_deeply [$base->sub_radix_exp([0, 7], [0, 0])], [0, 7];
    is_deeply [$base->sub_radix_exp([0, 7], [0, 1])], [0, 6];
    is_deeply [$base->sub_radix_exp([0, 7], [0, 2])], [0, 5];
    is_deeply [$base->sub_radix_exp([0, 7], [0, 3])], [0, 4];
    is_deeply [$base->sub_radix_exp([0, 7], [0, 4])], [0, 3];
    is_deeply [$base->sub_radix_exp([0, 7], [0, 5])], [0, 2];
    is_deeply [$base->sub_radix_exp([0, 7], [0, 6])], [0, 1];
    is_deeply [$base->sub_radix_exp([0, 7], [0, 7])], [0, 0];
    is_deeply [$base->sub_radix_exp([0, 7], [1, 0])], [-1, 7];
    is_deeply [$base->sub_radix_exp([0, 7], [1, 1])], [-1, 6];
    is_deeply [$base->sub_radix_exp([0, 7], [1, 2])], [-1, 5];
};

subtest "oct [1,0] - x" => sub {
    my $base = Math::Radix::DecimalExp->new(8);
    is_deeply [$base->sub_radix_exp([1, 0], [0, 0])], [1, 0];
    is_deeply [$base->sub_radix_exp([1, 0], [0, 1])], [0, 7];
    is_deeply [$base->sub_radix_exp([1, 0], [0, 2])], [0, 6];
    is_deeply [$base->sub_radix_exp([1, 0], [0, 3])], [0, 5];
    is_deeply [$base->sub_radix_exp([1, 0], [0, 4])], [0, 4];
    is_deeply [$base->sub_radix_exp([1, 0], [0, 5])], [0, 3];
    is_deeply [$base->sub_radix_exp([1, 0], [0, 6])], [0, 2];
    is_deeply [$base->sub_radix_exp([1, 0], [0, 7])], [0, 1];
    is_deeply [$base->sub_radix_exp([1, 0], [1, 0])], [0, 0];
    is_deeply [$base->sub_radix_exp([1, 0], [1, 1])], [-1, 7];
    is_deeply [$base->sub_radix_exp([1, 0], [1, 2])], [-1, 6];
};

subtest "oct [1,1] - x" => sub {
    my $base = Math::Radix::DecimalExp->new(8);
    is_deeply [$base->sub_radix_exp([1, 1], [0, 0])], [1, 1];
    is_deeply [$base->sub_radix_exp([1, 1], [0, 1])], [1, 0];
    is_deeply [$base->sub_radix_exp([1, 1], [0, 2])], [0, 7];
    is_deeply [$base->sub_radix_exp([1, 1], [0, 3])], [0, 6];
    is_deeply [$base->sub_radix_exp([1, 1], [0, 4])], [0, 5];
    is_deeply [$base->sub_radix_exp([1, 1], [0, 5])], [0, 4];
    is_deeply [$base->sub_radix_exp([1, 1], [0, 6])], [0, 3];
    is_deeply [$base->sub_radix_exp([1, 1], [0, 7])], [0, 2];
    is_deeply [$base->sub_radix_exp([1, 1], [1, 0])], [0, 1];
    is_deeply [$base->sub_radix_exp([1, 1], [1, 1])], [0, 0];
    is_deeply [$base->sub_radix_exp([1, 1], [1, 2])], [-1, 7];
};

done_testing;
