use std::fs::File;
use std::io::Read;

fn load_names() -> Vec<String> {
    let mut contents = String::new();
    File::open("p022_names.txt")
        .expect("File not found")
        .read_to_string(&mut contents)
        .expect("Error reading");

    let mut names = contents
                        .replace("\"", " ")
                        .replace(" ", "")
                        .split(',')
                        .map(|s| s.to_string())
                        .collect::<Vec<String>>();
    names.sort();
    names
}


fn solve() -> i32 {
    load_names()
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
