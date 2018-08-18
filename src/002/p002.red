Red [Title: "Problem 002"]

fibi: [1 1]
sum: 0
step: 0

fibstep: function [fibs] [
  st: first fibs
  sd: second fibs
  st + sd
]

while [step < 4'000'000] [
    step: fibstep fibi
    if even? step [sum: sum + step]
    remove append fibi step
]

print sum
