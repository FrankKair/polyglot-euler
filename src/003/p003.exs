defmodule Problem003 do
  defp prime?(x) when x in [2, 3, 7, 11, 13, 17], do: true
  defp prime?(x) do
    Enum.all?((2..round(:math.sqrt(x))), fn(n) -> rem(x, n) != 0 end)
  end

  defp factors(n) do
    1..round(:math.sqrt(n))
    |> Enum.filter(fn(x) -> rem(n, x) == 0 end)
  end

  def solve do
    factors(600851475143)
    |> Enum.filter(&prime?/1)
    |> Enum.max
  end
end

IO.puts Problem003.solve
