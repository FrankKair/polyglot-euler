fn palindrome(n: String) -> bool {
    let reversed = n.chars().rev().collect::<String>();
    reversed == n.to_string()
}

fn number_palindrome(n: i32, base: i8) -> bool {
    match base {
        2 => palindrome(format!("{:b}", n)),
        10 => palindrome(n.to_string()),
        _ => false,
    }
}

fn double_base_palindrome(n: i32) -> bool {
    number_palindrome(n, 10) && number_palindrome(n, 2)
}

fn sum_double_base_palindromes_below(limit: i32) -> i32 {
    (0..limit)
        .into_iter()
        .filter(|&x| double_base_palindrome(x))
        .sum()
}

fn solve() -> i32 {
    sum_double_base_palindromes_below(1000000)
}

fn main() {
    let result = solve();
    println!("{}", result);
}
