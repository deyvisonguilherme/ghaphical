use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :ghaphical, GhaphicalWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :ghaphical, Ghaphical.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "developer",
  password: "tutorial",
  database: "ghaphical_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
