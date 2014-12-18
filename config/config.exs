# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :hello_phoenix, HelloPhoenix.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Vd9p2zojet2yiw9JC/o9GvF+7ur4LZ0a9g/W/l8/DjKQ1eyMBvZjDXYfPdnIEW4T",
  debug_errors: false

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :template_engines,
  haml: PhoenixHaml.Engine

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
