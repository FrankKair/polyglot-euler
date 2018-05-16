fn is_palindrome(n: i32) -> bool {
    let reversed: String = n.to_string().chars().rev().collect();
    reversed == n.to_string()
}

fn is_binary_palindrome(n: i32) -> bool {
    let binary = format!("{:b}", n);
    let reversed: String = format!("{:b}", n).chars().rev().collect();
    reversed == binary
}

fn double_base_palindrome(n: i32) -> bool {
    is_palindrome(n) && is_binary_palindrome(n)
}

fn sum_of_double_palindrome_numbers_below(limit: i32) -> i32 {
    (0..limit)
        .into_iter()
        .filter(|&x| double_base_palindrome(x))
        .sum()
}

fn solve() -> i32 {
    sum_of_double_palindrome_numbers_below(1000000)
}

fn main() {
    let result = solve();
    println!("{}", result);
}
