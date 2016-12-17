# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :phoenix_api_base,
  ecto_repos: [PhoenixApiBase.Repo]

# Configures the endpoint
config :phoenix_api_base, PhoenixApiBase.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Dz2UXWaoWMQr0G87nxxCm5TjDOThZKykSGwK1uQ00j1plpn1WHWei9m5roioFCQO",
  render_errors: [view: PhoenixApiBase.ErrorView, accepts: ~w(json)],
  pubsub: [name: PhoenixApiBase.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
