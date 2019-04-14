 defmodule Problem052 do
  defp sorted_digits(x), do: x |> Integer.digits() |> Enum.sort()

  defp condition(x) do
    a = sorted_digits(x) == sorted_digits(x * 2)
    b = sorted_digits(x * 3) == sorted_digits(x * 4)
    c = sorted_digits(x * 5) == sorted_digits(x * 6)
    a && b && c
  end

  defp numbers(), do: Stream.unfold(1, fn(x) -> {x, x+1} end)

  def solve do
    numbers()
    |> Stream.take_while(&(!condition(&1)))
    |> Enum.max
    |> Kernel.+(1)
  end
end

IO.puts Problem052.solve
