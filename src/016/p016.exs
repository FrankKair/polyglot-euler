defmodule Problem016 do
  def solve do
    :math.pow(2, 1000)
    |> round
    |> Integer.digits
    |> Enum.sum
  end
end

IO.puts Problem016.solve
