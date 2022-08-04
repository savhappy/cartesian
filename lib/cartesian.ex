defmodule Cartesian do

  # A list method that returns all combinations of elements within lists.

  def product(list1, list2) do
   first = list1
   rest = list2

    [rest]
    |> Enum.reduce(first, fn
      row, acc -> combine(acc, row)
    end)
  end

  def product([]) do
    []
  end

  def product(args) do
    [first | rest] = args

     rest
     |> Enum.reduce(first, fn
       row, acc -> combine(acc, row)
     end)
   end


  defp combine(row_1, row_2) do
    for x <- row_1, y <- row_2, do: List.flatten([x,y])
  end

end
