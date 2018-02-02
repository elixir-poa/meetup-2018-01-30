defmodule Meetup.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      {Meetup.Counter, []},
      {Meetup.Endpoint, []},
    ]

    opts = [strategy: :one_for_one, name: Meetup.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
