#!/usr/bin/env perl
use strict;

sub solve {
    my $a = 1;
    my $b = 2;
    my $sum = 0;
    while ($b < 4000000) {
        $sum += $b if $b % 2 == 0;
        my $temp = $b;
        $b += $a;
        $a = $temp;
    }
    return $sum;
}

my $result = solve;
print($result);
