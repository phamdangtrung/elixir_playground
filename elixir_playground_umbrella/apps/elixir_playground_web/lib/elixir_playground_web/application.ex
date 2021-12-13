defmodule ElixirPlaygroundWeb.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      ElixirPlaygroundWeb.Telemetry,
      # Start the Endpoint (http/https)
      ElixirPlaygroundWeb.Endpoint
      # Start a worker by calling: ElixirPlaygroundWeb.Worker.start_link(arg)
      # {ElixirPlaygroundWeb.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ElixirPlaygroundWeb.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ElixirPlaygroundWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
