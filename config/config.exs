# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :timeline,
  ecto_repos: [Timeline.Repo]

# Configures the endpoint
config :timeline, TimelineWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "efByhK6CbFrU56+jRLRBsnmoCIUnV8XmCysrQH/RcWN5r27e2xV1C+iy6EZG92aU",
  render_errors: [view: TimelineWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Timeline.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
