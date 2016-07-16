defmodule Counter do

  def start do
    Agent.start_link(fn -> 0 end, name: __MODULE__)
  end

  def get(counter) do
    Agent.get(counter, fn n -> n end)
  end

  def increase(counter) do
    Agent.update(counter, fn n -> n + 1 end)
    Counter.get(counter)
  end

  def decrease(counter) do
    Agent.update(counter, fn n -> n - 1 end)
    Counter.get(counter)
  end

end
