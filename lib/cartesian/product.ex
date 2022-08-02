defmodule Product do

  def cartesian(list1, list2) do
   first = list1
   rest = list2

    [rest]
    |> Enum.reduce(first, fn
      row, acc -> combine(acc, row)
    |> IO.inspect()
    end)
  end

  def combine(row_1, row_2) do
    for x <- row_1, y <- row_2, do: [x,y]
  end

end