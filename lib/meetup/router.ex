defmodule Meetup.Router do
  use Phoenix.Router

  get "/", Meetup.RootController, :show
end
