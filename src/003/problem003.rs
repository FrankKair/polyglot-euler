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
    return factors;
}

fn get_prime_factors(n: i64) -> Vec<i64> {
    get_factors(n)
        .into_iter()
        .filter(|&x| is_prime(x))
        .collect::<Vec<i64>>()
}

fn main() {
    if let Some(maximum_value) = get_prime_factors(600851475143).iter().max() {
        println!("{}", maximum_value);
    }
}
