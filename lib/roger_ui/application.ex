defmodule RogerUi.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    {:ok, _} = Plug.Adapters.Cowboy.http(RogerUi.RouterPlug, [], port: 4040)
    Supervisor.start_link([], strategy: :one_for_one)
  end
end
