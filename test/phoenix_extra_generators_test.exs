defmodule PhoenixExtraGeneratorsTest do
  use ExUnit.Case
  doctest PhoenixExtraGenerators

  test "greets the world" do
    assert PhoenixExtraGenerators.hello() == :world
  end
end
