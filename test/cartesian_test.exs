defmodule CartesianTest do
  use ExUnit.Case
  doctest Cartesian

  test "greets the world" do
    assert Cartesian.hello() == :world
  end

  test "takes rows" do
    out = Product.cartesian(["1", "2", "3"],["a", "b", "c"])
    assert [["1", "a"], ["1", "b"], ["1", "c"], ["2", "a"], ["2", "b"], ["2", "c"], ["3", "a"], ["3", "b"], ["3", "c"]] == out
  end

  test "takes open ended amount of rows" do
    out = Product.cartesian([["1", "2"], ["a", "b"], ["Z", "Y"]])
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
end
