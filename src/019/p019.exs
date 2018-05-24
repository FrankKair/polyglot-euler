#!/usr/bin/env elixir
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

  @doc """
  Propagates the week index given monthly number of days.
  Last calculated value is for the next year, so we don't return it
  """
  def calculate_month_first_days([[], [_|month_tail]]), do: month_tail
  def calculate_month_first_days([[delta_head|delta_tail], [month_head|month_tail]]) do
    calculate_month_first_days([delta_tail, [rem(delta_head+month_head, 7) | [month_head|month_tail]]])
  end

  @doc """
  At first we generate a stream of lists on the form [year, weekday], where year is the year number and
  weekday is the weekday index (0 = sunday, 1 = monday, ..., 6 = saturday) for the 1st of January of that year.
  We then transform each of that lists into a list of weekday indexes for each month.
  We can then only count the zeros, meaning a leading sunday on the month.
  """
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
