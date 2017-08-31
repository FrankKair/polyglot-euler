fn is_divisible_up_to(input: i64, upper_bound: i64) -> bool {
  !(1..upper_bound).any (|x| input % x != 0)
}

fn main() {
  let mut number = 1;
  while !is_divisible_up_to(number, 20) {
    number += 1;
  }
  println!("{}", number);
}