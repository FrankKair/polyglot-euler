use std::fs::File;
use std::io::Read;

fn solve() -> i32 {
    let filename = "p022_names.txt";
    let mut file = File::open(filename).expect("File not found.");
    let mut contents = String::new();
    file.read_to_string(&mut contents).expect("Error reading file.");

    let filtered_name_list = contents.replace("\"", " ").replace(" ", "");
    let mut names = filtered_name_list.split(',').collect::<Vec<&str>>();
    names.sort();

    names
        .iter()
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
