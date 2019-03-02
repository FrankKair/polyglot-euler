defmodule Problem018 do
  @triangle [
    [75],
    [95, 64],
    [17, 47, 82],
    [18, 35, 87, 10],
    [20, 04, 82, 47, 65],
    [19, 01, 23, 75, 03, 34],
    [88, 02, 77, 73, 07, 63, 67],
    [99, 65, 04, 28, 06, 16, 70, 92],
    [41, 41, 26, 56, 83, 40, 80, 70, 33],
    [41, 48, 72, 33, 47, 32, 37, 16, 94, 29],
    [53, 71, 44, 65, 25, 43, 91, 52, 97, 51, 14],
    [70, 11, 33, 28, 77, 73, 17, 78, 39, 68, 17, 57],
    [91, 71, 52, 38, 17, 14, 91, 43, 58, 50, 27, 29, 48],
    [63, 66, 04, 68, 89, 53, 67, 30, 73, 16, 69, 87, 40, 31],
    [04, 62, 98, 27, 23, 09, 70, 98, 73, 93, 38, 53, 60, 04, 23],
  ]

  defp get_triangle_path_sum([], _, _, acc), do: acc
  defp get_triangle_path_sum([head | tail], [t_head | t_tail], pos, acc) do
    case head do
      0 -> get_triangle_path_sum(tail, t_tail, pos, acc+Enum.at(t_head, pos))
      1 -> get_triangle_path_sum(tail, t_tail, pos+1, acc+Enum.at(t_head, pos+1))
    end
  end
  defp get_triangle_path_sum(index), do: get_triangle_path_sum(index, Enum.slice(@triangle, 1..-1), 0, List.first(List.first(@triangle)))

  defp pad_left_with_zeros(list, len) do
    if Enum.count(list) >= len do
      list
    else
      pad_left_with_zeros([0|list], len)
    end
  end

  def solve do
    0..round(:math.pow(2, Enum.count(@triangle)-1)-1)
    |> Stream.map(&(Integer.digits(&1, 2)))
    |> Stream.map(&(pad_left_with_zeros(&1, Enum.count(@triangle)-1)))
    |> Stream.map(&(get_triangle_path_sum(&1)))
    |> Enum.max()
  end
end

IO.puts Problem018.solve
