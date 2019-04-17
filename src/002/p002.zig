const std = @import("std");
const warn = std.debug.warn;

pub fn main() void {
    var sum: u64 = 0;
    var i: u64 = 1;
    var j: u64 = 1;
    var k: u64 = 1;
    while (j < 4000000) : ({
        k = i;
        i = j;
        j += k;
    }) {
        if (j % 2 == 0) {
            sum += j;
        }
    }
    warn("{}\n", sum);
}
