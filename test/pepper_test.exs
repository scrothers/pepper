defmodule PepperTest do
  use ExUnit.Case
  doctest Pepper

  test "greets the world" do
    assert Pepper.hello() == :world
  end
end
