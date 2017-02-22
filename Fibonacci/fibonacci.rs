use std::i64;
use std::env;

fn fibonacci(n: i64) -> i64 {
	if n <= 2 {
		return n;	
	}
	return fibonacci(n-1) + fibonacci(n-2);
}

fn parse_input() {
	if let Some(arg) = env::args().nth(1) {
        if let Ok(x) = arg.parse::<i64>() {
        	println!("{}", fibonacci(x));
        }
    }
}

fn main() {
    parse_input();
}