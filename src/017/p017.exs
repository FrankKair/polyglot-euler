defmodule Problem017 do
  defp unit2string([x]) do
    case x do
      1 -> "one"
      2 -> "two"
      3 -> "three"
      4 -> "four"
      5 -> "five"
      6 -> "six"
      7 -> "seven"
      8 -> "eight"
      9 -> "nine"
      _ -> ""
    end
  end

  defp tens2string([1, units]) do
    case units do
      0 -> "ten"
      1 -> "eleven"
      2 -> "twelve"
      3 -> "thirteen"
      4 -> "fourteen"
      5 -> "fifteen"
      6 -> "sixteen"
      7 -> "seventeen"
      8 -> "eighteen"
      9 -> "nineteen"
    end
  end
  defp tens2string([tens|units]) do
    case tens do
      2 -> "twenty" <> unit2string(units)
      3 -> "thirty" <> unit2string(units)
      4 -> "forty" <> unit2string(units)
      5 -> "fifty" <> unit2string(units)
      6 -> "sixty" <> unit2string(units)
      7 -> "seventy" <> unit2string(units)
      8 -> "eighty" <> unit2string(units)
      9 -> "ninety" <> unit2string(units)
      0 -> unit2string(units)
      _ -> ""
    end
  end

  defp int2string([first|rest]) do
    case Enum.count([first|rest]) do
      1 -> unit2string([first])
      2 -> tens2string([first|rest])
      3 ->
        case rest do
          [0,0] -> unit2string([first]) <> "hundred"
          _ -> unit2string([first]) <> "hundredand" <> tens2string(rest)
        end
      _ -> ""
    end
  end
  defp int2string(x), do: int2string(Integer.digits(x))

  def solve do
    1..999
    |> Stream.map(&int2string/1)
    |> Enum.reduce(&Kernel.<>/2)
    |> Kernel.<>("onethousand")
    |> String.length()
  end
end

IO.puts Problem017.solve
