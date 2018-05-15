#!/usr/bin/env elixir
defmodule Problem022 do
  @moduledoc """
  Using names.txt (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.
  For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.
  What is the total of all the name scores in the file?
  """

  defp read_names_file() do
    {:ok, names} = File.read("p022_names.txt")
    names
    |> String.replace("\"", "")
    |> String.split(",")
  end

  defp get_name_value({name, index}) do
    name
    |> String.to_charlist()
    |> Enum.map(&(&1-64))
    |> Enum.sum()
    |> Kernel.*(index+1)
  end

  def solve do
    read_names_file()
    |> Enum.sort()
    |> Enum.with_index()
    |> Enum.map(&(get_name_value(&1)))
    |> Enum.sum()
  end
end

IO.puts Problem022.solve
