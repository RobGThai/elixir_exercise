defmodule CounterTest do
  use ExUnit.Case
  doctest Counter

  test "the truth" do
    assert 1 + 1 == 2
  end

  test "Counter is working" do
    {_, counter} = Counter.start()
    assert Process.alive?(counter)
  end

  test "Get value 0" do
    {_, counter} = Counter.start()
    assert Process.alive?(counter)
    assert Counter.get(counter) == 0
  end

  test "Increase" do
    {_, counter} = Counter.start()
    assert Process.alive?(counter)
    assert Counter.increase(counter) == 1
  end

  test "Decrease" do
    {_, counter} = Counter.start()
    assert Process.alive?(counter)
    assert Counter.decrease(counter) == -1
  end
end
