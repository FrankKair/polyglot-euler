fn solve() -> i32 {
    let (sum, sum_of_sq): (i32, i32) =
        (0..101).fold((0, 0), |acc, x| (acc.0 + x, acc.1 + x.pow(2)));
    sum.pow(2) - sum_of_sq
}

fn main() {
    let result = solve();
    println!("{}", result);
}
