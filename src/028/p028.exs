defmodule Problem028 do
  defp spiral_diag_sum(1), do: 1
  defp spiral_diag_sum(2), do: 10
  defp spiral_diag_sum(x) when is_integer(x) and x > 0, do: 4*x*x - 6*(x-1) + spiral_diag_sum(x-2)

  def solve, do: spiral_diag_sum(1001)
end

IO.puts Problem028.solve
