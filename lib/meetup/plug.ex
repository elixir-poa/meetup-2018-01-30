defmodule Meetup.Plug do
  def init(options) do
    options
  end

  def call(conn, _options) do
    conn = Plug.Conn.put_resp_content_type(conn, "text/plain")

    Plug.Conn.send_resp(conn, 200, "Meetup")
  end
end
