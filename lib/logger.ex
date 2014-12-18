defmodule HelloPhoenix.Logger do
  def start_link do
    sub = spawn_link(&log/0)
    Phoenix.PubSub.subscribe(sub, "logging")
    {:ok, sub}
  end

  def log do
    receive do
      {:action,params} ->
        IO.puts "[HelloPhoenix.Logger] *** Called action #{params[:action]} in controller #{params[:controller]} ***"
      _ ->
    end

    log
  end
end
