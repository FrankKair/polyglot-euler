#!/usr/bin/env elixir
defmodule Problem012 do
  defp numbers(), do: Stream.unfold(1, fn(x) -> {x, x+1} end)

  defp triangle_number(x), do: (1..x) |> Enum.sum

  defp factors(n) do
    1..round(:math.sqrt(n))
    |> Enum.filter(fn(x) -> rem(n, x) == 0 end)
  end

  defp condition(x) do
    x
    |> triangle_number
    |> factors
    |> Enum.count
    |> Kernel.*(2) < 500
  end

  def solve do
    numbers()
    |> Stream.take_while(&(condition(&1)))
    |> Enum.max
    |> Kernel.+(1)
    |> triangle_number
  end
end

IO.puts Problem012.solve
