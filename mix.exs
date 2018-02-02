defmodule Meetup.MixProject do
  use Mix.Project

  def project do
    [
      app: :meetup,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: [
        {:cowboy, "~> 1.1"},
        {:phoenix, "~> 1.3.0"},
        {:phoenix_html, "~> 2.10.0"},
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {Meetup.Application, []}
    ]
  end
end
