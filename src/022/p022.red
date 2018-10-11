Red [Title: "Problem 022"]

names: sort split read %p022_names.txt #","

score: function [idx name][
  s: 0 
  foreach n do name [s: s + (to integer! n) - 64]
  idx * s
]


solve: function [][
  scores: 0
  forall names [scores: scores + score (index? names) (first names)]
  scores
]

print solve
