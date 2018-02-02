defmodule Meetup.Endpoint do
  use Phoenix.Endpoint, otp_app: :meetup

  plug Meetup.Router
end
