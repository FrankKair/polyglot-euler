#!/usr/bin/env bash

spiral_diag_sum() {
    if [[ $1 -eq 1 ]]
    then
        echo 1
    else
        echo $(( 4*$1*$1 - 6*($1-1) + $(spiral_diag_sum $[$1-2]) ))
    fi
}

solve() {
    spiral_diag_sum 1001
}

solve