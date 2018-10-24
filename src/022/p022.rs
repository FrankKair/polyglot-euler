use std::fs::File;
use std::io::Read;

fn solve() -> i32 {
    let mut contents = String::new();
    File::open("p022_names.txt")
        .expect("File not found")
        .read_to_string(&mut contents)
        .expect("Error reading");

    let filtered = contents.replace("\"", " ").replace(" ", "");
    let mut names = filtered.split(',').collect::<Vec<&str>>();
    names.sort();

    names
        .into_iter()
        .enumerate()
        .map(|(i, name)| {
            let bytes: i32 = name.bytes().map(|c| (c as i32) - 64).sum();
            let index = (i + 1) as i32;
            bytes * index
        })
        .sum()
}

fn main() {
    let result = solve();
    println!("{}", result);
}
