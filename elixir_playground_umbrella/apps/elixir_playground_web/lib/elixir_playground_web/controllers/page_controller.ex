defmodule ElixirPlaygroundWeb.PageController do
  use ElixirPlaygroundWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
