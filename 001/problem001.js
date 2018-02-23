#!/usr/bin/env node

let list = []
for (let i = 1; i < 1000; i++) {
  if (i % 3 === 0 || i % 5 === 0) {
    list.push(i)
  }
}

const result = list.reduce((sum, current) => sum + current)

console.log(result)
