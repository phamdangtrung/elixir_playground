defmodule ElixirPlayground.Events do
  use Ecto.Schema

  schema "events" do
    field :title, :string
    field :location, :string
    field :date, :utc_datetime
    timestamps()
  end
end
