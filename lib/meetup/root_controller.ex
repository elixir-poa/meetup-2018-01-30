defmodule Meetup.RootController do
  use Phoenix.Controller

  def show(conn, _params) do
    Meetup.Counter.increment

    value = Meetup.Counter.value
    conn = put_layout(conn, false)

    render(conn, "show.html", value: value)
  end
end
