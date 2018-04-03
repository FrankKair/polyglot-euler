fn is_pythagorean_triplet(a: i32, b: i32, c: i32) -> bool {
    a * a + b * b == c * c
}

fn solve() -> i32 {
    let mut product = 0;

    for a in 0..500 {
        for b in a..500 {
            let c = 1000 - a - b;
            let sum = a + b + c;
            if is_pythagorean_triplet(a, b, c) && sum == 1000 {
                product = a * b * c;
                break;
            }
        }
    }
    product
}

fn main() {
    let result = solve();
    println!("{}", result);
}
