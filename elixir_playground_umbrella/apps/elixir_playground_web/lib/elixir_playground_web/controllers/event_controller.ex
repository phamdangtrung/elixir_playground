defmodule ElixirPlaygroundWeb.EventController do
  use ElixirPlaygroundWeb, :controller
  alias ElixirPlayground.EventsQueries, as: EventQueries
  def show(conn, %{"id" => id}) do
    event = EventQueries.get_by_id(id)
    |> IO.inspect()

    render conn, "details.html", event: event
  end
end
