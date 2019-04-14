 defmodule Problem034 do
  defp factorial(1), do: 1
  defp factorial(x) when is_integer(x) and x > 0, do: x*factorial(x-1)

  defp is_factorial_sum?(number) do
    number ==
      number
      |> Integer.digits()
      |> Enum.map(&(factorial(&1)))
      |> Enum.sum()
  end

  def solve do
    3..40_585  # magic number!
    |> Stream.filter(&(is_factorial_sum?(&1)))
    |> Enum.to_list()
    |> Enum.sum()
  end
end

IO.puts Problem034.solve
