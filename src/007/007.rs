fn sieve_of_eratosthenes(bound: usize) -> Vec<i32> {
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
        .filter_map(|(index, val)| if val {Some(index as i32)} else {None})
        .collect::<Vec<i32>>()
}

fn solve() -> i32 {
    sieve_of_eratosthenes(1000000)[10000]
}

fn main() {
    let result = solve();
    println!("{}", result);
}
