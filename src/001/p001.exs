defmodule Problem001 do
  def solve do
    1..999
    |> Enum.filter(fn(x) -> rem(x, 3) == 0 || rem(x, 5) == 0 end)
    |> Enum.sum()
  end
end

IO.puts Problem001.solve
