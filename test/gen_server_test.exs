defmodule CounterGenServerTest do
  use ExUnit.Case

  test "GenServer is alive" do
    {:ok, sv} = Counter.GenServer.start_link()
    assert Process.alive?(sv)
  end
end
