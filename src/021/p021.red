Red [Title: "Problem 021"]

divisors: function [n [integer!]] [
  divs: copy [] 
  repeat i to integer! square-root n [
    if n % i = 0 [append divs i append divs (n / i)]
  ]
  remove reverse sort unique divs
]

sumdivs: function [n [integer!]] [s: 0 foreach ni (divisors n) [s: s + ni] s]

amic: function [n [integer!]] [
  sn: sumdivs n
  either all [(n < sn) (n = sumdivs sn)] [
    reduce [n sn]
  ][ 
    []
  ]
]

amics: copy []

repeat j 10'000 [
  if none = find amics j [
    am: amic j unless tail? am [put amics am/2 am/1]
  ]
]

sum-amics: 0

foreach am amics [sum-amics: sum-amics + am]

print sum-amics
