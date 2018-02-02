defmodule Meetup.Counter do
  use GenServer

  def start_link([]) do
    GenServer.start_link(__MODULE__, [], name: :counter)
  end

  def increment do
    GenServer.cast(:counter, :increment)
  end

  def value do
    GenServer.call(:counter, :value)
  end

  def reset do
    GenServer.cast(:counter, :reset)
  end

  # API Interna

  def init([]) do
    {:ok, 0}
  end

  def handle_cast(:increment, state) do
    raise("Deu ruim")
  end

  def handle_cast(:reset, _state) do
    {:noreply, 0}
  end

  def handle_call(:value, _from, state) do
    {:reply, state, state}
  end
end
