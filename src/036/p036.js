const palindrome = (s) => s === s.split('').reverse().join('');

const numberPalindrome = (n, base) => {
  switch (base) {
    case 2: return palindrome(n.toString(2));
    case 10: return palindrome(n.toString());
    default: return false;
  }
}

const doubleBasePalindrome = (n) => 
  numberPalindrome(n, 2) && numberPalindrome(n, 10);

const sumDoubleBasePalindromesBelow = (limit) => (
  Array(limit)
    .fill(0)
    .map((_, i) => i + 1)
    .filter(x => doubleBasePalindrome(x))
    .reduce((sum, value) => sum + value)
);

const solve = () => sumDoubleBasePalindromesBelow(1000000);

const result = solve();
console.log(result);
