defmodule Pravda.MixProject do
  use Mix.Project

  def project do
    [
      app: :pravda,
      version: "0.1.1",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      description: description(),
      package: package(),
      source_url: "https://github.com/mogorman/pravda",
      test_coverage: [tool: ExCoveralls],
      preferred_cli_env: [
        coveralls: :test,
        "coveralls.detail": :test,
        "coveralls.post": :test,
        "coveralls.html": :test,
      ],
      dialyzer: [
        plt_add_deps: :transitive,
        plt_add_apps: [:ex_unit, :mix],
      ],
      # Docs
      name: "Pravda",
      source_url: "https://github.com/mogorman/pravda",
      homepage_url: "https://github.com/mogorman/pravda",
      docs: [
        # The main page in the docs
        main: "Pravda",
        logo: "pravda.png",
        extras: ["README.md"],
      ],
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
    ]
  end

  defp description() do
    "OpenApi3 phoenix plug based validation and stand alone specs validator."
  end

  defp package() do
    [
      maintainers: ["Matthew O'Gorman"],
      links: %{"GitHub" => "https://github.com/mogorman/pravda"},
      licenses: ["MIT"],
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:freedom_formatter, "~> 1.0", only: [:dev, :test]},
      {:dialyxir, "~> 1.0.0-rc.7", only: [:dev, :test], runtime: false},
      {:excoveralls, "~> 0.10", only: [:dev, :test]},
      {:credo, "~> 1.1.0", only: [:dev, :test], runtime: false},
      {:ex_doc, "~> 0.21", only: :dev, runtime: false},
    ]
  end
end
