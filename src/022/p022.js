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
  const scores = names.map((name, index) => {
    let nameScore = 0;
    for (let i = 0; i < name.length; i++) {
      nameScore += name.charCodeAt(i) - 64;
    }
    return nameScore * (index + 1);
  });

  return scores.reduce((sum, next) => sum + next);
}

const result = solve();
console.log(result);
