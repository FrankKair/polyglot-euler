defmodule Problem025 do
  defp fibonacci_sequence do
    Stream.unfold({1, 1}, fn {a, b} -> {a, {b, a + b}} end)
  end

  def solve do
    fibonacci_sequence()
    |> Enum.find_index(&(length(Integer.digits(&1)) == 1000))
    |> Kernel.+(1)
  end
end

IO.puts Problem025.solve
