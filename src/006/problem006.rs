fn square(n: i64) -> i64 {
    n * n
}

fn solve() -> i64 {
    let sum_of_the_squares: i64 = (0..101).map(square).sum();
    let square_of_the_sum = square((0..101).sum());
    square_of_the_sum - sum_of_the_squares
}

fn main() {
    let result = solve();
    println!("{}", result);
}
