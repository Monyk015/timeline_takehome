use Mix.Config

# Configure your database
config :timeline, Timeline.Repo,
  username: "postgres",
  password: "postgres",
  database: "timeline_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :timeline, TimelineWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

import_config "dev.secret.exs"
