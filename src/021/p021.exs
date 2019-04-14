defmodule Problem021 do
  defp divisors(x, n, divisors) when n == x, do: divisors
  defp divisors(x, n, divisors) when rem(x, n) == 0, do: divisors(x, n+1, [n | divisors])
  defp divisors(x, n, divisors), do: divisors(x, n+1, divisors)
  defp divisors(1), do: [1]
  defp divisors(x) when is_integer(x) and x > 0, do: divisors(x, 1, [])
  
  defp divisor_sum(x), do: divisors(x) |> Enum.sum()
  
  defp is_amicable(x), do: x == divisor_sum(divisor_sum(x)) and x !== divisor_sum(x)
  
  def solve do
    1..10000
    |> Stream.filter(&is_amicable(&1))
    |> Enum.sum()
  end
end

IO.puts Problem021.solve
