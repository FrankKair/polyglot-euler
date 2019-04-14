defmodule Problem022 do
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
