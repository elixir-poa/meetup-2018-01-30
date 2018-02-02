defmodule Meetup.ErrorView do
  use Phoenix.View, root: "lib/meetup/templates"

  def render("500.html", _options) do
    "Internal error"
  end
end
