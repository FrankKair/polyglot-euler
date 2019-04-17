const std = @import("std");
const warn = std.debug.warn;

pub fn main() void {
    var sum: u64 = 0;
    var j: u64 = 3;
    while (j < 1000) : (j += 1) {
        if (j % 3 == 0 or j % 5 == 0) {
            sum += j;
        }
    }
    warn("{}\n", sum);
}
