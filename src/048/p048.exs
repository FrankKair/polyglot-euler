 defmodule Problem048 do

  defp pow_mod10000000000(_, 0), do: 1
  defp pow_mod10000000000(x, n) when rem(n, 2) != 0 do
    x * pow_mod10000000000(x, n - 1)
    |> Integer.digits()
    |> Enum.take(-10)
    |> Integer.undigits()
  end
  defp pow_mod10000000000(x, n) do
    result = pow_mod10000000000(x, div(n, 2))
    result * result
    |> Integer.digits()
    |> Enum.take(-10)
    |> Integer.undigits()
  end

  def solve do
    1..1000
    |> Stream.map(&(pow_mod10000000000(&1, &1)))
    |> Enum.sum()
    |> Integer.digits()
    |> Enum.take(-10)
    |> Integer.undigits()
  end
end

IO.puts Problem048.solve
