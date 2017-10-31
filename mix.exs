defmodule PhoenixExtraGenerators.MixProject do
  use Mix.Project

  @version "0.1.0"

  def project do
    [
      app: :phoenix_extra_generators,
      version: @version,
      elixir: "~> 1.5",
      description: "Extra generator commands for Phoenix.",
      package: package(),
      deps: deps(),
      docs: [
      extras: ["README.md"],
        main: "readme",
        source_ref: "v#{@version}",
        source_url: "https://github.com/sebastiandedeyne/phoenix_extra_generators"
      ]
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    []
  end

  defp package do
    [
      name: :phoenix_extra_generators,
      files: ["lib", "mix.exs", "README.md", "LICENSE.md"],
      maintainers: ["Sebastian De Deyne"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/sebastiandedeyne/phoenix_extra_generators"}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:phoenix, "~> 1.3.0", only: :dev}
    ]
  end
end
