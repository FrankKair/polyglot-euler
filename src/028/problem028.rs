fn solve() -> i32 {
    let mut list = vec![1];

    for grid_size in 3..1003 {
        if grid_size % 2 == 0 { continue; }

        // Here we use a clone because we can't 
        // have a immutable borrow and afterwards
        // a mutable borrow with extend.
        let v = list.clone();

        // We can safely assume there's
        // always a last element since
        // we created the vector with one
        // element in it.
        let start = v.last().unwrap();
        let interval = grid_size - 1;

        let diagonal_numbers = vec![
            start + interval,
            start + (2 * interval),
            start + (3 * interval),
            start + (4 * interval)
        ];

        list.extend(diagonal_numbers);
    }

   list.into_iter().sum()
}

fn main() {
    let result = solve();
    println!("{}", result);
}

