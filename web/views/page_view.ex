defmodule HelloPhoenix.PageView do
  use HelloPhoenix.View

  def message do
    "Hello from PageView!"
  end

  def connection_keys(conn) do
    Map.from_struct(conn)
    |> Map.keys
  end
end
