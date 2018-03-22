fn greatest_common_divisor(a: i32, b: i32) -> i32 {
    let mut a = a;
    let mut b = b;
    while b != 0 {
        let module = a % b;
        a = b;
        b = module;
    }
    a
}

fn least_common_multiple(a: i32, b: i32) -> i32 {
    a * b / greatest_common_divisor(a, b)
}

fn solve() -> i32 {
    (1..20).fold(1, |acc, x| least_common_multiple(acc, x))
}

fn main() {
    let result = solve();
    println!("{}", result);
}
