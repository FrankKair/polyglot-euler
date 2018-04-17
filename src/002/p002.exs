#!/usr/bin/env elixir
defmodule Problem002 do
  Code.require_file("../../helper_libs/euler.ex")

  def solve do
    Euler.fibonacci_sequence()
    |> Stream.take_while(&(&1 < 4000000))
    |> Stream.filter(&(rem(&1, 2) == 0))
    |> Enum.sum()
  end
end

IO.puts Problem002.solve
