defmodule Problem019 do
  def is_leap_year(year) when rem(year, 400) == 0, do: true
  def is_leap_year(year) when rem(year, 100) == 0, do: false
  def is_leap_year(year) when rem(year, 4) == 0, do: true
  def is_leap_year(_), do: false

  def get_month_days(year) do
    if is_leap_year(year) do
      [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    else
      [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    end
  end

  def calculate_month_first_days([[], [_|month_tail]]), do: month_tail
  def calculate_month_first_days([[delta_head|delta_tail], [month_head|month_tail]]) do
    calculate_month_first_days([delta_tail, [rem(delta_head+month_head, 7) | [month_head|month_tail]]])
  end

  def solve do
    # [1901, 2] means that 1901-01-01 was a tuesday
    Stream.unfold([1901, 2], fn [year, weekday] -> {[year, weekday],
                                                    [year+1, rem(weekday+Enum.sum(get_month_days(year)), 7)]} end)
    |> Stream.take_while(fn [year, _] -> year <= 2000 end)
    |> Stream.map(fn [year, weekday] -> [get_month_days(year), [weekday]]  end)
    |> Stream.map(&calculate_month_first_days/1)
    |> Stream.map(&(Enum.count(&1, fn(x) -> x == 0 end)))
    |> Enum.sum()
  end
end

IO.puts Problem019.solve
