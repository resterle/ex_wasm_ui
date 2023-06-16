defmodule ExWasmUiWeb.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      ExWasmUiWeb.Telemetry,
      # Start the Endpoint (http/https)
      ExWasmUiWeb.Endpoint
      # Start a worker by calling: ExWasmUiWeb.Worker.start_link(arg)
      # {ExWasmUiWeb.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ExWasmUiWeb.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    ExWasmUiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
