use Mix.Config

config :roger, Roger.AMQPClient,
  host: "localhost",
  port: 5672

config :roger_ui,
  server: false,
  roger_info_api: RogerUi.Tests.RogerInfoInMemory

if node() == :"nonode@nohost" do
  config :roger_ui, :server, false
  config :roger, :partitions,
    roger_ui_test_partition: [default: 10, other: 2]
end
