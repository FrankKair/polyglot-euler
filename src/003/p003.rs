fn is_prime(n: i64) -> bool {
    let float_input = n as f64;
    let upper_bound = float_input.sqrt() as i64 + 1;

    for x in 2..upper_bound {
        if n % x == 0 {
            return false;
        }
    }
    return true;
}

fn get_factors(n: i64) -> Vec<i64> {
    let mut factors: Vec<i64> = Vec::new();

    let float_input = n as f64;
    let upper_bound = float_input.sqrt() as i64 + 1;

    for x in 1..upper_bound {
        if n % x == 0 {
            factors.push(x);
            factors.push(n / x);
        }
    }
    factors
}

fn get_prime_factors(n: i64) -> Vec<i64> {
    get_factors(n)
        .into_iter()
        .filter(|&x| is_prime(x))
        .collect::<Vec<i64>>()
}

fn solve() -> i64 {
    get_prime_factors(600851475143).into_iter().max().unwrap()
}

fn main() {
    let result = solve();
    println!("{}", result);
}
