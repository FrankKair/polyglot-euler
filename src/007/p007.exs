#!/usr/bin/env elixir
defmodule Problem007 do
  defp divisors(x, n, divisors) when n == x, do: [ n | divisors ]
  defp divisors(x, n, divisors) when rem(x, n) == 0, do: divisors(x, n+1, [n | divisors])
  defp divisors(x, n, divisors), do: divisors(x, n+1, divisors)
  defp divisors(1), do: [1]
  defp divisors(x) when is_integer(x) and x > 0, do: divisors(x, 1, [])
  
  defp is_prime(x), do: divisors(x) == [x, 1]

  defp generate_primes() do
    Stream.iterate(2, &(&1+1))
    |> Stream.filter(&is_prime(&1))
  end

  def solve do
    generate_primes()
    |> Enum.take(10001)
    |> Enum.max()
  end
end

IO.puts Problem007.solve
