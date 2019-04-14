defmodule Problem002 do
  defp fibonacci_sequence do
    Stream.unfold({1, 1}, fn {a, b} -> {a, {b, a + b}} end)
  end

  def solve do
    fibonacci_sequence()
    |> Stream.take_while(&(&1 < 4000000))
    |> Stream.filter(&(rem(&1, 2) == 0))
    |> Enum.sum()
  end
end

IO.puts Problem002.solve
