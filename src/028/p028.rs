fn solve() -> i32 {
    let mut sum = 1;
    for i in 3..1003 {
        if i % 2 == 0 { continue; }
        sum += 4 * i * i - (6 * (i - 1));
    }
    sum
}

fn main() {
    let result = solve();
    println!("{}", result);
}
