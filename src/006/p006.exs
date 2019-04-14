defmodule Problem006 do
  defp square(x), do: x * x

  def solve do
    sum_of_the_squares = 0..100
    |> Enum.map(&square/1)
    |> Enum.sum()

    square_of_the_sum = 0..100
    |> Enum.sum()
    |> square

    square_of_the_sum - sum_of_the_squares
  end
end

IO.puts Problem006.solve
