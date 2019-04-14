 defmodule Problem089 do
  defp read_numbers_file() do
    {:ok, numbers} = File.read("p089_roman.txt")
    numbers
    |> String.split("\n")
  end

  defp roman_to_integer(roman_string) do
    letter_values = %{
      "I" => 1,
      "V" => 5,
      "X" => 10,
      "L" => 50,
      "C" => 100,
      "D" => 500,
      "M" => 1000,
    }

    roman_string
    |> String.graphemes()
    |> Enum.map(fn x -> elem(Map.fetch(letter_values, x), 1) end)
    |> Enum.chunk_every(2, 1)
    |> Enum.map(fn [a, b] when a >= b -> a
                   [a, _] -> -a
                   [a] -> a end)
    |> Enum.sum()
  end

  defp roman_units(number) do
    case number do
      1 -> "I"
      2 -> "II"
      3 -> "III"
      4 -> "IV"
      5 -> "V"
      6 -> "VI"
      7 -> "VII"
      8 -> "VIII"
      9 -> "IX"
      _ -> ""
    end
  end

  defp roman_tens(number) do
    case number do
      1 -> "X"
      2 -> "XX"
      3 -> "XXX"
      4 -> "XL"
      5 -> "L"
      6 -> "LX"
      7 -> "LXX"
      8 -> "LXXX"
      9 -> "XC"
      _ -> ""
    end
  end

  defp roman_hundreds(number) do
    case number do
      1 -> "C"
      2 -> "CC"
      3 -> "CCC"
      4 -> "CD"
      5 -> "D"
      6 -> "DC"
      7 -> "DCC"
      8 -> "DCCC"
      9 -> "CM"
      _ -> ""
    end
  end

  defp roman_thousands(number), do: String.duplicate("M", number)

  defp integer_to_roman([head|tail], roman_string) do
    case Enum.count(tail) do
      0 -> roman_string <> roman_units(head)
      1 -> integer_to_roman(tail, roman_string <> roman_tens(head))
      2 -> integer_to_roman(tail, roman_string <> roman_hundreds(head))
      3 -> integer_to_roman(tail, roman_string <> roman_thousands(head))
      _ -> :error
    end
  end
  defp integer_to_roman(number), do: integer_to_roman(Integer.digits(number), "")

  def solve do
    numbers = read_numbers_file()

    original_file_len =
      numbers
      |> Enum.join()
      |> String.length()

    new_file_len =
      numbers
      |> Enum.to_list()
      |> Enum.map(&roman_to_integer/1)
      |> Enum.map(&integer_to_roman/1)
      |> Enum.to_list()
      |> Enum.join()
      |> String.length()

    original_file_len - new_file_len
  end
end

IO.puts Problem089.solve
