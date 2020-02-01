const fs = require('fs');

function loadNames(): Array<string> {
  const names: string = fs.readFileSync('p022_names.txt').toString();
  const namesArray = names.replace(/['"]+/g, '').split(',');
  const sortedNames = namesArray.sort((a: string, b: string) => {
    if (a < b) return -1;
    else if (a > b) return 1;
    return 0;
  });
  return sortedNames;
}

function score(name: string, index: number): number {
  let nameScore = 0;
  for (let i = 0; i < name.length; i++) {
    nameScore += name.charCodeAt(i) - 64;
  }
  return nameScore * (index + 1);
}

function solve(): number {
  const sum = (acc: number, next: number) => acc + next;
  return loadNames()
    .map(score)
    .reduce(sum);
}

const result = solve();
console.log(result);
