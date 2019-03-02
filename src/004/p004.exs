defmodule Problem004 do
  defp reverse_number(x) do
    x
    |> Integer.to_string()
    |> String.reverse()
    |> String.to_integer()
  end
  
  defp is_palindrome(x), do: x == reverse_number(x)
  
  defp get_palindrome_multiples(x, a, b) do
    a..b
    |> Stream.map(&(&1 * x))
    |> Stream.filter(&is_palindrome(&1))
    |> Enum.to_list()
  end

  def solve do
    100..999
    |> Stream.map(&get_palindrome_multiples(&1, 100, 999))
    |> Enum.to_list()
    |> List.flatten()
    |> Enum.max()
  end
end

IO.puts Problem004.solve
