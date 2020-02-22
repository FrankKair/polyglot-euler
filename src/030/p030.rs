fn digits(num: i32) -> Vec<i32> {
    num.to_string()
        .chars()
        .map(|c| c.to_digit(10).unwrap() as i32)
        .collect::<Vec<i32>>()
}

fn digits_fifth_power(n: i32) -> i32 {
    digits(n).into_iter()
             .map(|d| d.pow(5))
             .sum()
}

fn solve() -> i32 {
    (2..200000)
        .filter(|&n| digits_fifth_power(n) == n)
        .sum()
}

fn main() {
    let result = solve();
    println!("{}", result);
}
