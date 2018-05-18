fn is_palindrome(n: i32) -> bool {
    let reversed = n.to_string().chars().rev().collect::<String>();
    reversed == n.to_string()
}

fn solve() -> i32 {
    let mut largest = 0;
    for x in 100..999 {
        for y in 100..999 {
            let product = x * y;
            if product > largest && is_palindrome(product) {
                largest = product;
            }
        }
    }
    largest
}

fn main() {
    let result = solve();
    println!("{}", result);
}
