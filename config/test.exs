use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :mmoney_api, MmoneyApi.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :mmoney_api, MmoneyApi.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "mmoney_api_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
