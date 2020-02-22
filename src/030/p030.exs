 defmodule Problem030 do
  defp digits_fifth_power(x) do
    x
    |> Integer.digits()
    |> Enum.map(&(trunc(:math.pow(&1, 5))))
    |> Enum.sum()
  end

  def solve do
    Stream.iterate(2, &(&1+1))
    |> Stream.take_while(&(&1 < 200_000))
    |> Stream.filter(&(&1 == digits_fifth_power(&1)))
    |> Enum.sum()
  end
end

IO.puts Problem030.solve
