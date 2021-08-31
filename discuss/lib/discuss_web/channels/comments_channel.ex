defmodule Discuss.CommentsChannel do
  use DiscussWeb, :channel

  def join(name, _params, socket) do
    IO.puts("==========")
    IO.puts(name)
    IO.puts("==========")
    {:ok, socket}
  end

  def handle_in(_event, _payload, socket) do
    IO.puts("==========")
    IO.puts(socket)
    IO.puts("==========")
    {:ok, socket}
  end
end
