defmodule Problem015 do
  defp factorial(0), do: 1
  defp factorial(n) when n > 0, do: n * factorial(n - 1)

  defp combination(n, k) do
    combination = factorial(n) / (factorial(k) * factorial(n - k))
    round(combination)
  end

  defp count_routes(k), do: combination(2 * k, k)

  def solve, do: count_routes(20)
end

IO.puts Problem015.solve
