function solve(): number {
  let sum = 0;
  for (let i: number = 0; i < 1000; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      sum += i;
    }
  }

  return sum;
}

const result = solve();
console.log(result);
