use Mix.Config

config :dots, Dots.Endpoint,
  http: [port: 80],
  url: [host: "example.com", port: 80],
  cache_static_manifest: "priv/static/manifest.json"

# Do not print debug messages in production
config :logger, level: :info

config :dots, Dots.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "dots_dev",
  hostname: "localhost",
  pool_size: 20
