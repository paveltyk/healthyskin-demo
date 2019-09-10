# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :healthyskin,
  ecto_repos: [Healthyskin.Repo]

# Configures the endpoint
config :healthyskin, HealthyskinWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "wXGoyhD1pwDis8Qjs1BY0ntfG5Eajw2IDvp0jY3+9jLlO3uarrApb/9pY4ic3uGY",
  render_errors: [view: HealthyskinWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: Healthyskin.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
