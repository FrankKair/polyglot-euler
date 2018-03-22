fn is_palindrome(n: i32) -> bool {
    let reversed: String = n.to_string().chars().rev().collect();
    reversed == n.to_string()
}

fn main() {
    let mut largest = 0;
    for x in 100..999 {
        for y in 100..999 {
            let product = x * y;
            if product > largest && is_palindrome(product) {
                largest = product;
            }
        }
    }
    println!("{}", largest);
}
