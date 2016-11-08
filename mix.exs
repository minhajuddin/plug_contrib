defmodule PlugContrib.Mixfile do
  use Mix.Project

  def project do
    [app: :plug_contrib,
     version: "0.1.1",
     elixir: "~> 1.3",
     package: package,
     description: description,
     docs: [
       extras: ~W(README.md CHANGELOG.md)
     ],
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:cowboy, "~> 1.0.0"},
      {:plug, "> 0.8.0"},

      {:ex_doc, "~> 0.11", only: :dev},
      {:earmark, "~> 0.2", only: :dev},
    ]
  end

  defp description do
    """
    An elixir plug that compresses(gzips) your responses
    """
  end

  defp package do
    [
      files: ~w(lib mix.exs README.md LICENSE CHANGELOG.md),
      maintainers: ["Khaja Minhajuddin"],
      licenses: ["MIT"],
      links: %{
        "Github" => "http://github.com/minhajuddin/plug_contrib",
        "Docs"   => "http://hexdocs.pm/plug_contrib",
      }
    ]
  end
end
