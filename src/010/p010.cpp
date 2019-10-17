//Euler Problem 10
//Author: Ernulphus
//What is the sum of all primes under 1 million?

#include<iostream>

bool isPrime(int x);
int solve();

int solve()
{
  unsigned long sum = 2;
  int LAST_PRIME = 2000000;

  int p = 3;
  while (p < LAST_PRIME)
  {
    if (isPrime(p))
    {
      sum += p;
      //std::cout << p << std::endl;
    }
    p++;
  }
  return sum;
}

bool isPrime(int x)
{
  if (x%2==0)
  {
      return false;
  }

  for (int i = 2; i < x; i++)
  {
    if (x%i == 0) //i is a factor of x
    {
      return false;
    }
  }
  return true;
}

int main()
{
  std::cout << solve() << std::endl;
}
