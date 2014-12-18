defmodule HelloPhoenix.MyChannel do
  use Phoenix.Channel

  def join(socket, topic, %{"token" => token}) do
    # a really trivial example here but you get the idea...
    # some kind of authentication scheme
    if token === "token" do
      reply socket, "join", %{content: "joined #{topic} successfully"}
      {:ok,socket}
    else
      reply socket, "error", %{reason: "You are not allowed to join #{topic}!"}
      {:error, socket, :unauthorized}
    end
  end

  def event(socket, "ping", message) do
    IO.puts "sending myself pong"
    send socket.pid, "pong"
    socket
  end

  def event(socket, "info", "pong") do
    IO.puts "Got pong from my own ping"
    reply socket, "pong", %{content: "Pong message from Phoenix channel"}
    socket
  end

end
