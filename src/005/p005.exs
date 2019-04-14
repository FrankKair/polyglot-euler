defmodule Problem005 do
  defp gcd(x, 0), do: x
  defp gcd(x, y), do: gcd(y, rem(x, y))
  defp lcm(x, y), do: x * y / gcd(x, y)

  def solve do
    1..20
    |> Enum.reduce(fn(x, acc) -> round(lcm(x, acc)) end)
  end
end

IO.puts Problem005.solve
