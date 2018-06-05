fn factors(n: i32) -> Vec<i32> {
    let mut factors: Vec<i32> = vec![1];
    let float_input = n as f32;
    let upper_bound = float_input.sqrt() as i32 + 1;
    for x in 2..upper_bound {
        if n % x == 0 {
            factors.push(x);
            factors.push(n / x);
        }
    }
    factors
}

fn amicable(n: i32) -> bool {
    let factors_sum = factors(n).into_iter().sum();
    if n == factors_sum { return false; }
    n == factors(factors_sum).into_iter().sum()
}

fn solve() -> i32 {
    (1..10000)
        .into_iter()
        .filter(|&x| amicable(x))
        .sum()
}

fn main() {
    let result = solve();
    println!("{}", result);
}
