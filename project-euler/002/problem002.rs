fn main() {
    let mut a = 1;
    let mut b = 2;
    let mut sum = 0;

    while b < 4000000 {
        if b % 2 == 0 {
            sum += b;
        }
        let temp = b;
        b = a + b;
        a = temp;
    }
    println!("{:?}", sum);
}