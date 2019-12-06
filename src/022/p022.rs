use std::fs::File;
use std::io::Read;

fn load_names() -> Vec<String> {
    let mut contents = String::new();
    File::open("p022_names.txt")
        .expect("File not found")
        .read_to_string(&mut contents)
        .expect("Error reading");

    let mut names = contents
                        .replace("\"", "")
                        .split(',')
                        .map(str::to_string)
                        .collect::<Vec<String>>();
    names.sort();
    names
}

fn name_score(pair: (usize, String)) -> i32 {
    let (i, name) = pair;
    let bytes: i32 = name.bytes().map(|c| (c as i32) - 64).sum();
    let index = (i + 1) as i32;
    bytes * index
}

fn solve() -> i32 {
    load_names()
        .into_iter()
        .enumerate()
        .map(name_score)
        .sum()
}

fn main() {
    let result = solve();
    println!("{}", result);
}
