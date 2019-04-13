const std = @import("std");
const warn = std.debug.warn;

fn divby3or5(num: u64) bool {
  return num % 3 == 0 or num % 5 == 0;
}

pub fn main() void {
  var sum: u64 = 0;
  var j: u64 = 3;
  while (j < 1000) : (j += 1) {
    if (divby3or5(j)) {sum += j;}
  } 
  warn("{}\n", sum);
}