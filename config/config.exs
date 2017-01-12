# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :postex,
  ecto_repos: [Postex.Repo]

# Configures the endpoint
config :postex, Postex.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "jbuybdombfTDNVncsIIEY0SaidyYp9MiH37mvydYfU1UNtRbOORVkrZbYPDfCJKy",
  render_errors: [view: Postex.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Postex.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :ueberauth, Ueberauth,
  providers: [
    facebook: {Ueberauth.Strategy.Facebook, []}
  ]

config :ueberauth, Ueberauth.Strategy.Facebook.OAuth,
  client_id: "",
  client_secret: ""
