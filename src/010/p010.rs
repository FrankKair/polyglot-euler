fn sieve_of_eratosthenes(bound: usize) -> Vec<i64> {
    let mut primes: Vec<bool> = (0..bound + 1)
                                    .map(|num| num == 2 || num & 1 != 0)
                                    .collect();

    let mut num = 3usize;
    while num * num <= bound {
        let mut j = num * num;

        while j <= bound {
            primes[j] = false;
            j += num;
        }
        num += 2;
    }

    primes
        .into_iter()
        .enumerate()
        .skip(2)
        .filter_map(|(index, val)| if val {Some(index as i64)} else {None})
        .collect::<Vec<i64>>()
}

fn solve() -> i64 {
    sieve_of_eratosthenes(2000000).into_iter().sum()
}

fn main() {
    let result = solve();
    println!("{}", result);
}
