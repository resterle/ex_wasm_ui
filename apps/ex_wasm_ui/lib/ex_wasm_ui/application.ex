defmodule ExWasmUi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the PubSub system
      {Phoenix.PubSub, name: ExWasmUi.PubSub}
      # Start a worker by calling: ExWasmUi.Worker.start_link(arg)
      # {ExWasmUi.Worker, arg}
    ]

    Supervisor.start_link(children, strategy: :one_for_one, name: ExWasmUi.Supervisor)
  end
end
