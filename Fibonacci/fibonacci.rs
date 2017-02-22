use std::i8;
use std::env;

fn fibonacci(n: i8) -> i8 {
	if n <= 2 {
		return n;	
	}
	return fibonacci(n-1) + fibonacci(n-2);
}

fn parse_input() {
	if let Some(arg) = env::args().nth(1) {
        if let Ok(x) = arg.parse::<i8>() { 
        	println!("{}", fibonacci(x));
        }
    }
}

fn main() {
    parse_input();
}