defmodule Problem020 do
  defp factorial(0), do: 1
  defp factorial(n) when n > 0, do: n * factorial(n - 1)

  defp sum_factorial_digits(x) do
    factorial(x)
    |> Integer.digits
    |> Enum.sum
  end

  def solve, do: sum_factorial_digits(100)
end

IO.puts Problem020.solve
