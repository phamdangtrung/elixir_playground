defmodule ElixirPlayground.Events do
  use Ecto.Schema

  import Ecto.Changeset

  schema "events" do
    field :title, :string
    field :location, :string
    field :date, :utc_datetime
    field :description, :string

    timestamps()
  end

  @required_fields ~w(title location date)a
  @optional_fields ~w(description)a

  def changeset(event, params \\ %{}) do
    event
    |> cast(params, @required_fields, @optional_fields)
    |> validate_required(@required_fields)
    # |> validate_change(:date, &must_be_future/2)
  end

  defp convert_to_datetime(value)  do
    { :ok, value, 0 } = DateTime.from_iso8601("#{value}Z")
  end

  defp must_be_future(_, value)  do
    DateTime.compare(value, DateTime.utc_now())
    |> get_error
  end

  defp get_error(comparision) when comparision == :lt, do: [date: "Cannot be in the past"]

  defp get_error(_)  do
    []
  end

end
