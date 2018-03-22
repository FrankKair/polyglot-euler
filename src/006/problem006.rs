fn square(n: i32) -> i32 {
    n * n
}

fn solve() -> i32 {
    let sum_of_the_squares: i32 = (0..101).map(square).sum();
    let square_of_the_sum = square((0..101).sum());
    square_of_the_sum - sum_of_the_squares
}

fn main() {
    let result = solve();
    println!("{}", result);
}
