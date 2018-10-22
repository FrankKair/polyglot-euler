#!/usr/bin/env node
const fs = require('fs');

function loadNames() {
  const names = fs.readFileSync('p022_names.txt').toString();
  const namesArray = names.replace(/['"]+/g, '').split(',');
  const sortedNames = namesArray.sort((a, b) => {
    if (a < b) return -1;
    else if (a > b) return 1;
    return 0;
  });
  return sortedNames;
}

function solve() {
  const names = loadNames();
  let sum = 0;

  for (let i = 0; i < names.length; i++) {
    let nameScore = 0;
    const name = names[i];

    for (let j = 0; j < name.length; j++) {
      nameScore += name.charCodeAt(j) - 64;
    }

    sum += nameScore * (i + 1);
  }

  return sum;
}

const result = solve();
console.log(result);
