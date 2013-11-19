#!/usr/bin/env perl -Ilib -w
use strict;
use Test::More;
use Math::Radix::DecimalExp;

subtest "bin [1,0] + x" => sub {
    my $base = Math::Radix::DecimalExp->new(2);
    is_deeply [$base->add_radix_exp([1, 0], [0, 0])], [1, 0];
    is_deeply [$base->add_radix_exp([1, 0], [0, 1])], [1, 1];
    is_deeply [$base->add_radix_exp([1, 0], [1, 0])], [2, 0];
    is_deeply [$base->add_radix_exp([1, 0], [1, 1])], [2, 1];
    is_deeply [$base->add_radix_exp([1, 0], [2, 0])], [3, 0];
    is_deeply [$base->add_radix_exp([1, 0], [2, 1])], [3, 1];
    is_deeply [$base->add_radix_exp([1, 0], [3, 0])], [4, 0];
    is_deeply [$base->add_radix_exp([1, 0], [3, 1])], [4, 1];
    is_deeply [$base->add_radix_exp([1, 0], [4, 0])], [5, 0];
    is_deeply [$base->add_radix_exp([1, 0], [4, 1])], [5, 1];
    is_deeply [$base->add_radix_exp([1, 0], [5, 0])], [6, 0];
};

subtest "bin [1,0] + x(overflow exp)" => sub {
    my $base = Math::Radix::DecimalExp->new(2);
    is_deeply [$base->add_radix_exp([1, 0], [0, 0])],  [1, 0];
    is_deeply [$base->add_radix_exp([1, 0], [0, 1])],  [1, 1];
    is_deeply [$base->add_radix_exp([1, 0], [0, 2])],  [2, 0];
    is_deeply [$base->add_radix_exp([1, 0], [0, 3])],  [2, 1];
    is_deeply [$base->add_radix_exp([1, 0], [0, 4])],  [3, 0];
    is_deeply [$base->add_radix_exp([1, 0], [0, 5])],  [3, 1];
    is_deeply [$base->add_radix_exp([1, 0], [0, 6])],  [4, 0];
    is_deeply [$base->add_radix_exp([1, 0], [0, 7])],  [4, 1];
    is_deeply [$base->add_radix_exp([1, 0], [0, 8])],  [5, 0];
    is_deeply [$base->add_radix_exp([1, 0], [0, 9])],  [5, 1];
    is_deeply [$base->add_radix_exp([1, 0], [0, 10])], [6, 0];
};

subtest "oct [0,7] + x" => sub {
    my $base = Math::Radix::DecimalExp->new(8);
    is_deeply [$base->add_radix_exp([0, 7], [0, 0])], [0, 7];
    is_deeply [$base->add_radix_exp([0, 7], [0, 1])], [1, 0];
    is_deeply [$base->add_radix_exp([0, 7], [0, 2])], [1, 1];
    is_deeply [$base->add_radix_exp([0, 7], [0, 3])], [1, 2];
    is_deeply [$base->add_radix_exp([0, 7], [0, 4])], [1, 3];
    is_deeply [$base->add_radix_exp([0, 7], [0, 5])], [1, 4];
    is_deeply [$base->add_radix_exp([0, 7], [0, 6])], [1, 5];
    is_deeply [$base->add_radix_exp([0, 7], [0, 7])], [1, 6];
    is_deeply [$base->add_radix_exp([0, 7], [1, 0])], [1, 7];
    is_deeply [$base->add_radix_exp([0, 7], [1, 1])], [2, 0];
    is_deeply [$base->add_radix_exp([0, 7], [1, 2])], [2, 1];
};

subtest "oct [1,0] + x" => sub {
    my $base = Math::Radix::DecimalExp->new(8);
    is_deeply [$base->add_radix_exp([1, 0], [0, 0])], [1, 0];
    is_deeply [$base->add_radix_exp([1, 0], [0, 1])], [1, 1];
    is_deeply [$base->add_radix_exp([1, 0], [0, 2])], [1, 2];
    is_deeply [$base->add_radix_exp([1, 0], [0, 3])], [1, 3];
    is_deeply [$base->add_radix_exp([1, 0], [0, 4])], [1, 4];
    is_deeply [$base->add_radix_exp([1, 0], [0, 5])], [1, 5];
    is_deeply [$base->add_radix_exp([1, 0], [0, 6])], [1, 6];
    is_deeply [$base->add_radix_exp([1, 0], [0, 7])], [1, 7];
    is_deeply [$base->add_radix_exp([1, 0], [1, 0])], [2, 0];
    is_deeply [$base->add_radix_exp([1, 0], [1, 1])], [2, 1];
    is_deeply [$base->add_radix_exp([1, 0], [1, 2])], [2, 2];
};

subtest "oct [1,1] + x" => sub {
    my $base = Math::Radix::DecimalExp->new(8);
    is_deeply [$base->add_radix_exp([1, 1], [0, 0])], [1, 1];
    is_deeply [$base->add_radix_exp([1, 1], [0, 1])], [1, 2];
    is_deeply [$base->add_radix_exp([1, 1], [0, 2])], [1, 3];
    is_deeply [$base->add_radix_exp([1, 1], [0, 3])], [1, 4];
    is_deeply [$base->add_radix_exp([1, 1], [0, 4])], [1, 5];
    is_deeply [$base->add_radix_exp([1, 1], [0, 5])], [1, 6];
    is_deeply [$base->add_radix_exp([1, 1], [0, 6])], [1, 7];
    is_deeply [$base->add_radix_exp([1, 1], [0, 7])], [2, 0];
    is_deeply [$base->add_radix_exp([1, 1], [1, 0])], [2, 1];
    is_deeply [$base->add_radix_exp([1, 1], [1, 1])], [2, 2];
    is_deeply [$base->add_radix_exp([1, 1], [1, 2])], [2, 3];
};

done_testing;
