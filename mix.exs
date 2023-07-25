defmodule PhonnzBlog.MixProject do
  use Mix.Project

  def project do
    [
      app: :phonnz_blog,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      aliases: aliases(),
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:nimble_publisher, "~> 1.0.0"},
      {:phoenix_live_view, "~> 0.19.5"},
      {:esbuild, "~> 0.7.1"},
      {:tailwind, "~> 0.2.1"},
    ]
  end

  defp aliases() do
    [
      "site.build": ["build", "tailwind default --minify", "esbuild default --minify"]
    ]
  end
end
