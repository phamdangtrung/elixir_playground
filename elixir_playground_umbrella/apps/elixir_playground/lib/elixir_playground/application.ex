defmodule ElixirPlayground.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      ElixirPlayground.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: ElixirPlayground.PubSub}
      # Start a worker by calling: ElixirPlayground.Worker.start_link(arg)
      # {ElixirPlayground.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: ElixirPlayground.Supervisor)
  end
end
