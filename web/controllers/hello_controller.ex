defmodule HelloPhoenix.HelloController do
  use Phoenix.Controller

  plug :action

  def index(conn,_params) do
    # IO.inspect conn
    render conn, "index.html"
  end

  def show(conn, %{"messenger" => messenger}) do
    render conn, "show.html", messenger: messenger
  end
end
