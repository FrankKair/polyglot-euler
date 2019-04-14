defmodule Problem029 do
  defp generate_powers() do
    for a <- 2..100,
        b <- 2..100,
        do: trunc(:math.pow(a, b))
  end

  def solve do
    generate_powers()
    |> Enum.uniq()
    |> Enum.count()
  end
end

IO.puts Problem029.solve
