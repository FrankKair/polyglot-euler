defmodule Euler do
  def fibonacci_sequence do
    Stream.unfold({1, 1}, fn {a, b} -> {a, {b, a + b}} end)
  end
end

