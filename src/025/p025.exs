#!/usr/bin/env elixir
defmodule Problem025 do
  Code.require_file("../../helper_libs/euler.ex")

  def solve do
    Euler.fibonacci_sequence()
    |> Enum.find_index(&(length(Integer.digits(&1)) == 1000))
    |> Kernel.+(1)
  end
end

IO.puts Problem025.solve
