defmodule Problem010 do
  defp is_prime(2), do: true
  defp is_prime(x) when x > 2 do
    Enum.all?((2..round(:math.sqrt(x))), fn(n) -> rem(x, n) != 0 end)
  end

  defp generate_primes() do
    Stream.iterate(2, &(&1+1))
    |> Stream.filter(&is_prime(&1))
  end

  def solve do
    generate_primes()
    |> Stream.take_while(&(&1 < 2_000_000))
    |> Enum.sum()
  end
end

IO.puts Problem010.solve
