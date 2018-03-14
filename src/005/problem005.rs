fn greatest_common_divisor(a: i64, b: i64) -> i64 {
    let mut a = a;
    let mut b = b;
    while b != 0 {
        let module = a % b;
        a = b;
        b = module;
    }
    a
}

fn least_common_multiple(a: i64, b: i64) -> i64 {
    a * b / greatest_common_divisor(a, b)
}

fn solve() -> i64 {
    (1..20).fold(1, |acc, x| least_common_multiple(acc, x))
}

fn main() {
    let result = solve();
    println!("{}", result);
}
