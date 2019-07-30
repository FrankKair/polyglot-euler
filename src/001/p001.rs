fn solve() -> i32 {
    (0..1000).filter(|x| x % 3 == 0 || x % 5 == 0)
             .sum()
}

fn main() {
    let result = solve();
    println!("{}", result);
}
