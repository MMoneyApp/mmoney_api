# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :mmoney_api,
  ecto_repos: [MmoneyApi.Repo]

# Configures the endpoint
config :mmoney_api, MmoneyApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "wOpCQ4xFk5Cf2jlPNYEqOj/SsK7n/adFU8PbNZV8S7BeUKFxPlJVs7Dl3NWSpneI",
  render_errors: [view: MmoneyApi.ErrorView, accepts: ~w(json)],
  pubsub: [name: MmoneyApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
