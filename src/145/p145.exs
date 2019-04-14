defmodule Problem145 do
  defp is_reversible(x) when rem(x, 10) == 0, do: false
  defp is_reversible(x) do
      x
      |> Integer.to_string()
      |> String.reverse()
      |> String.to_integer()
      |> Kernel.+(x)
      |> Integer.digits()
      |> Enum.all?(fn(x) -> rem(x, 2) != 0 end)
  end

  def solve do
    1..1_000_000_000
    |> Stream.filter(&is_reversible(&1))
    |> Enum.count()
  end
end

IO.puts Problem145.solve
