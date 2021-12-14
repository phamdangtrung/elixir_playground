defmodule ElixirPlaygroundWeb.EventController do
  use ElixirPlaygroundWeb, :controller

  def show(conn, _params) do
    render conn, "details.html", event: "Events #{_params["id"]}"
  end
end
