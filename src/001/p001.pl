#!/usr/bin/env perl
use strict;

sub solve {
    my $sum = 0;
    for (my $i = 0; $i < 1000; $i++) {
        if ($i % 3 == 0 || $i % 5 == 0) {
            $sum += $i;
        }
    }
    return $sum;
}

my $result = solve;
print($result);
