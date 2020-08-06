# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :egghat_server,
  ecto_repos: [EgghatServer.Repo]

# Configures the endpoint
config :egghat_server, EgghatServerWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "cN02Y1kWMXFaRX6UPbZA7wdoejEyoOI7PtUCNNRFvv8IxuxqF/dYT7+/ZoC555Go",
  render_errors: [view: EgghatServerWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: EgghatServer.PubSub,
  live_view: [signing_salt: "ANQYTli9"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
