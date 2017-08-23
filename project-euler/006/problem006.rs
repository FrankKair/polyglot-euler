fn square(n: i64) -> i64 {
  return n * n;
}

fn main() {
  let sum_of_the_squares = (0..101)
                            .map(|x| x * x)
                            .fold(0, |acc, x| acc + x);

  let square_of_the_sum = square((0..101).fold(0, |acc, x| acc + x));


  println!("{}", square_of_the_sum - sum_of_the_squares);
}