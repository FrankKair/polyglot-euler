defmodule Problem007 do
  defp is_prime(2), do: true
  defp is_prime(x) do
    Enum.all?((2..round(:math.sqrt(x))), fn(n) -> rem(x, n) != 0 end)
  end

  defp generate_primes() do
    Stream.iterate(2, &(&1+1))
    |> Stream.filter(&is_prime(&1))
  end

  def solve do
    generate_primes()
    |> Enum.take(10001)
    |> Enum.max()
  end
end

IO.puts Problem007.solve
