# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :chatapp,
  ecto_repos: [Chatapp.Repo]

# Configures the endpoint
config :chatapp, Chatapp.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "xXHTVCoM94v8ah3H0AD0d9BuV/GXAP6rtAFHPSRmcSTKwB8DFoG8Pq/aOwq2bY4R",
  render_errors: [view: Chatapp.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Chatapp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
