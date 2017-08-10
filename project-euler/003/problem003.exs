#!/usr/bin/env elixir
defmodule Problem003 do
  def prime?(2), do: true
  def prime?(n) do
    upper_bound = n |> :math.sqrt
                    |> Float.ceil
                    |> trunc
    not_prime = 2..upper_bound
                |> Enum.any?(fn(x) -> rem(n, x) == 0 end)
    !not_prime
  end

  def factors(n) do
    1..n
    |> Enum.filter(fn(x) -> rem(n, x) == 0 end)
  end

  def solve do
    factors(600851475143)
    |> Enum.filter(&prime?/1)
    |> Enum.max
  end
end

IO.puts Problem003.solve