defmodule Problem097 do

  defp pow_mod10000000000(_, 0), do: 1
  defp pow_mod10000000000(x, n) when rem(n, 2) != 0 do
    x * pow_mod10000000000(x, n - 1)
    |> Integer.digits()
    |> Enum.take(-10)
    |> Integer.undigits()
  end
  defp pow_mod10000000000(x, n) do
    result = pow_mod10000000000(x, div(n, 2))
    result * result
    |> Integer.digits()
    |> Enum.take(-10)
    |> Integer.undigits()
  end

  def solve do
    pow_mod10000000000(2, 7830457)
    |> Kernel.*(28433)
    |> Kernel.+(1)
    |> Integer.digits()
    |> Enum.take(-10)
    |> Integer.undigits()
  end
end

IO.puts Problem097.solve
