 defmodule Problem055 do
  defp reverse_number(x) do
    x
    |> Integer.to_string()
    |> String.reverse()
    |> String.to_integer()
  end

  defp reverse_sum(x), do: x + reverse_number(x)

  defp is_palindrome(x), do: x == reverse_number(x)

  defp is_Lychrel_number(x) do
    Stream.unfold(reverse_sum(x), fn n -> {n, reverse_sum(n)} end)
    |> Stream.take(50)
    |> Enum.any?(&is_palindrome/1)
    |> Kernel.not
  end

  def solve do
    1..10_000
    |> Stream.filter(&is_Lychrel_number/1)
    |> Enum.count()
  end
end

IO.puts Problem055.solve
