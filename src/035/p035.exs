 defmodule Problem035 do
  defp is_prime(1), do: false
  defp is_prime(2), do: true
  defp is_prime(x) when x > 2 do
    Enum.all?((2..round(:math.sqrt(x))), fn(n) -> rem(x, n) != 0 end)
  end

  defp rotate_list([head | tail], 1), do: tail ++ [head]
  defp rotate_list(list, n), do: rotate_list(rotate_list(list, 1), n-1)

  defp rotate_number(x, rotations) do
    x
    |> Integer.digits()
    |> rotate_list(rotations)
    |> Integer.undigits()
  end

  defp get_rotations(_, 0, acc), do: acc
  defp get_rotations(x, n, acc), do: get_rotations(x, n-1, [rotate_number(x, n) | acc])
  defp get_rotations(x), do: get_rotations(x, Enum.count(Integer.digits(x)), [])

  defp is_circular_prime(x) do
    x
    |> get_rotations()
    |> Enum.all?(&is_prime(&1))
  end

  def solve do
    1..1_000_000
    |> Stream.filter(&is_prime(&1))
    |> Stream.filter(&is_circular_prime(&1))
    |> Enum.count()
  end
end

IO.puts Problem035.solve
