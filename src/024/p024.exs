defmodule Problem024 do
  defp factorial(1), do: 1
  defp factorial(x) when is_integer(x) and x > 1, do: x*factorial(x-1)

  defp divider(list) do
    list
    |> Enum.count()
    |> Kernel.-(1)
    |> factorial
  end

  defp permutate([head], _, acc), do: [head | acc] |> Enum.reverse() |> Integer.undigits()
  defp permutate(list, index, acc) do
    { i, tail } =
      list
      |> List.pop_at(div(index, divider(list)))
    permutate(tail, rem(index, divider(list)), [ i | acc ])
  end
  defp permutate(list, index), do: permutate(list, index-1, [])

  def solve do
    permutate([0,1,2,3,4,5,6,7,8,9], 1_000_000)
  end
end

IO.puts Problem024.solve
