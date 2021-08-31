defmodule DiscussWeb.Plugs.RequireAuth do
  import Plug.Conn
  import Phoenix.Controller

  alias DiscussWeb.Router.Helpers

  def init(_params) do
  end

  def call(conn, _params) do
    conn.assigns[:user]
    |> is_connection(conn)
  end

  defp is_connection(nil, conn) do
    conn
    |> put_flash(:error, "You must ne logged in.")
    |> redirect(to: Helpers.topic_path(conn, :index))
    |> halt()
  end

  defp is_connection(_user, conn), do: conn
end
