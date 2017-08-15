use std::i64;
use std::env;

fn fibonacci(n: i64) -> i64 {
  if n <= 2 { return n; }
  return fibonacci(n-2) + fibonacci(n-1);
}

fn main() {
  if let Some(arg) = env::args().nth(1) {
    if let Ok(x) = arg.parse::<i64>() {
      println!("{}", fibonacci(x));
    }
  }
}