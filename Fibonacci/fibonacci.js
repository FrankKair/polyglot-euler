function fib(x) {
	if (x < 2) { return x; }
	return fib(x-1) + fib(x-2);
}

const arg = parseInt(process.argv.slice(2));
console.log(fib(arg));