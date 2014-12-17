defmodule HelloPhoenix.PageController do
  use Phoenix.Controller
  alias Phoenix.Controller.Flash
  alias HelloPhoenix.Router.Helpers

  plug :action

  def index(conn, params) do
    # conn
    #   |> Flash.put(:notice, "Welcome to Phoenix, from a flash notice!")
    #   |> Flash.put(:error, "Let's pretend we have an error.")
    #   |> render "index.html"

    if params["redirect"] do
      redirect conn, to: Helpers.redirect_test_path(__MODULE__,:redirect_test)
    else
      render conn, :index, message: params["message"]
    end
  end

  def redirect_test(conn, _params) do
    text conn, "Redirect!"
  end
end