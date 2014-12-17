defmodule HelloPhoenix.Router do
  use Phoenix.Router

  pipeline :browser do
    plug :accepts, ~w(html text json)
    plug :fetch_session
    plug :protect_from_forgery
  end

  pipeline :api do
    plug :accepts, ~w(json)
  end

  scope "/", HelloPhoenix do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/redirect_test", PageController, :redirect_test, as: :redirect_test

    get "/hello", HelloController, :index
    get "/hello/:messenger", HelloController, :show

    resources "users", UserController do
      resources "posts", PostController
    end

    resources "reviews", ReviewController
  end

  scope "/admin", HelloPhoenix.Admin, as: :admin do
    pipe_through :browser
    resources "reviews", ReviewController
  end

  # Other scopes may use custom stacks.
  # scope "/api", HelloPhoenix do
  #   pipe_through :api
  # end
end
