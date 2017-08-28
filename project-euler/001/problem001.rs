fn main() {
  let sum: i64 = (0..1000)
                  .into_iter()
                  .filter(|&x| x % 3 == 0 || x % 5 == 0)
                  .sum();

  println!("{}", sum);
}