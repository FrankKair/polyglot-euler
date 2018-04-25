fn combination(n: u64, k: u64) -> u64 {
    (0..k).fold(1, |acc, i| acc * (n - i) / (i + 1))
}

fn solve() -> u64 {
    combination(40, 20)
}

fn main() {
    let result = solve();
    println!("{}", result);
}
