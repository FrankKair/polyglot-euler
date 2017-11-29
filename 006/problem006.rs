fn square(n: i64) -> i64 {
    n * n
}

fn main() {
    let sum_of_the_squares: i64 = (0..101)
                                  .map(|x| x * x)
                                  .sum();

    let square_of_the_sum = square((0..101).sum());


    println!("{}", square_of_the_sum - sum_of_the_squares);
}