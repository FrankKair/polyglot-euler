const std = @import("std");
const warn = std.debug.warn;

pub fn main() void {
    var sum_of_squares: u64 = 0;
    var sum: u64 = 0;
    var j: u64 = 1;
    var res: u64 = while (j <= 100) : (j += 1) {
        sum_of_squares += j * j;
        sum += j;
    } else (sum * sum) - sum_of_squares;
    warn("{}\n", res);
}
