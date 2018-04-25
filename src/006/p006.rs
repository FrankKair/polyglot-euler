fn solve() -> i32 {
    let sum_of_the_squares: i32 = (0..101).map(|x| x * x).sum();
    let square_of_the_sum: i32 = (0..101).sum::<i32>().pow(2);
    square_of_the_sum - sum_of_the_squares
}

fn main() {
    let result = solve();
    println!("{}", result);
}
