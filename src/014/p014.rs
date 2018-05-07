fn generate_collatz_sequence_starting_at(number: i64) -> Vec<i64> {
    let mut numbers = vec![number];
    let mut next = number;

    while next != 1 {
        if next % 2 == 0 {
            next = next / 2;
        } else {
            next = 3 * next + 1;
        }
        numbers.push(next);
    }
    return numbers;
}

fn solve() -> i32 {
    let mut longest_chain = Vec::new();
    let mut number = 1;
    let mut highest_number = 1;

    while number < 1000000 {
        number += 1;
        let chain = generate_collatz_sequence_starting_at(number);
        if chain.len() > longest_chain.len() {
            longest_chain = chain;
            highest_number = number;
        }
    }
    highest_number
}

fn main() {
    let result = solve();
    println!("{}", result);
}
