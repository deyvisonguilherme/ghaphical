use Mix.Config

# In this file, we keep production configuration that
# you'll likely want to automate and keep away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or yourself later on).
config :ghaphical, GhaphicalWeb.Endpoint,
  secret_key_base: "qzCFSXbBurwNOUB2ar5Cptuv5FsHzfQfI9rijr7Iamr7yGKPMSJQS/6VUE0+65OY"

# Configure your database
config :ghaphical, Ghaphical.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "developer",
  password: "tutorial",
  database: "ghaphical_prod",
  pool_size: 15
