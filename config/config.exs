# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phxslime,
  ecto_repos: [Phxslime.Repo]

# Configures the endpoint
config :phxslime, PhxslimeWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ntiQulHoxFz7tginNt13eOJ6/w3+y9ABin1+cvbQx9IT9wgxOQzMhTrnRYkJUmFS",
  render_errors: [view: PhxslimeWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Phxslime.PubSub,
  live_view: [signing_salt: "v5mAMTje"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Use Phoenix_Slime for templating engine
config :phoenix, :template_engines,
  slim: PhoenixSlime.Engine,
  slime: PhoenixSlime.Engine,
  slimleex: PhoenixSlime.LiveViewEngine

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
