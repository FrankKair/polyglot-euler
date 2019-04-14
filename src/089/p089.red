Red [Title: "Problem 089"]

mapping: [1000 #"M" 900 "CM" 500 #"D" 400 "CD" 100 #"C" 90 "XC" 50 #"L" 40 "XL" 10 #"X" 9 "IX" 5 #"V" 4 "IV" 1 #"I"]

roman-arab: function [roman][
  arab: 0  big: 0  roman-arab': reverse copy mapping
  foreach r' (reverse roman) [
    r:  select roman-arab' r'
    big:  max big r
    either big > r [arab: arab - r][arab: arab + r]
  ]
  arab
]

arab-roman: func [arab][
  roman: copy "" arab-roman': copy mapping
  while [arab > 0] [
    r: first arab-roman'
    either r > arab [
      arab-roman': skip arab-roman' 2
    ][
      arab: arab - r append roman select arab-roman' r
    ]
  ]
  roman
]

solve: function[][
  economy: 0

  foreach rnum load %p089_roman.txt [
    rnum: to string! rnum
    old: length? rnum
    new: length? arab-roman roman-arab rnum
    economy: economy + old - new
  ]
]

print solve
