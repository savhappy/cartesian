defmodule CartesianTest do
  use ExUnit.Case
  doctest Cartesian

  test "empty list" do
    out = Cartesian.product([])
    assert [] == out
  end

  test "takes rows" do
    out = Cartesian.product(["1", "2", "3"], ["a", "b", "c"])

    assert [
             ["1", "a"],
             ["1", "b"],
             ["1", "c"],
             ["2", "a"],
             ["2", "b"],
             ["2", "c"],
             ["3", "a"],
             ["3", "b"],
             ["3", "c"]
           ] == out
  end

  test "takes any data type and returns a list of combinations" do
    out = Cartesian.product(%{a: 1, b: 2}, %{c: 3, d: 4})
    assert [[{:a, 1}, {:c, 3}], [{:a, 1}, {:d, 4}], [{:b, 2}, {:c, 3}], [{:b, 2}, {:d, 4}]] == out
  end

  test "takes open ended amount of rows" do
    out = Cartesian.product([["1", "2"], ["a", "b"], ["Z", "Y"]])

    assert [
             ["1", "a", "Z"],
             ["1", "a", "Y"],
             ["1", "b", "Z"],
             ["1", "b", "Y"],
             ["2", "a", "Z"],
             ["2", "a", "Y"],
             ["2", "b", "Z"],
             ["2", "b", "Y"]
           ] == out
  end
  test "takes meta data" do
    out = Cartesian.product(
  [
    [
      %{
        "file" => "./cat-drop-input/cat-1.png",
        "trait_type" => "Background",
        "value" => "Cat 1"
      },
      %{
        "file" => "./cat-drop-input/cat-2.png",
        "trait_type" => "Background",
        "value" => "Cat 2"
      },
      %{
        "file" => "./cat-drop-input/cat-3.png",
        "trait_type" => "Background",
        "value" => "Cat 3"
      }
    ],
    [
      %{
        "file" => "./cat-drop-input/borders/border-1.png",
        "trait_type" => "Border",
        "value" => "green"
      },
      %{
        "file" => "./cat-drop-input/borders/border-2.png",
        "trait_type" => "Border",
        "value" => "aqua"
      }
    ],
    [
      %{
        "file" => "./cat-drop-input/stickers/sticker-1.png",
        "trait_type" => "Sticker",
        "value" => "blue"
      },
      %{
        "file" => "./cat-drop-input/stickers/sticker-2.png",
        "trait_type" => "Sticker",
        "value" => "red"
      },
      %{
        "file" => "./cat-drop-input/stickers/sticker-3.png",
        "trait_type" => "Sticker",
        "value" => "yellow"
      }
    ]
  ])
  IO.inspect(out)
end
end
