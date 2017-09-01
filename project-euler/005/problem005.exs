#!/usr/bin/env elixir
defmodule Problem005 do
  defp increasing_sequence do
    Stream.iterate(10, &(&1 + 1))
  end

  defp is_divisible_up_to_20(input) do
    1..20
    |> Enum.all?(fn(x) -> rem(input, x) == 0 end)
  end

  def solve do
    increasing_sequence()
    |> Enum.find(&is_divisible_up_to_20/1)
  end
end

IO.puts Problem005.solve