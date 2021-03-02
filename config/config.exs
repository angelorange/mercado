# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :mercado,
  ecto_repos: [Mercado.Repo]

# Configures the endpoint
config :mercado, MercadoWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Ak8PvqJbpJ+ZgW0qJuYvd0nWfh34hlZFQajq/+aAnwF1YqG7TW6k050RC9b7/4VN",
  render_errors: [view: MercadoWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Mercado.PubSub,
  live_view: [signing_salt: "0/gVM3Pu"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
