defmodule Persian.Mixfile do
  use Mix.Project

  def project do
    [app: :persian,
     version: "0.1.3",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description(),
     package: package(),
     name: "Persian",
     source_url: "https://github.com/ourway/ex_persian",
     deps: deps()]
  end


  defp description do
    """
    	Converts Arabic/NonPersian characters to pure Persian.
    """
  end

  defp package do
    # These are the default files included in the package
    [
      name: :persian,
      files: ["lib", "mix.exs", "README*", "config", "test"],
      maintainers: ["Farsheed Ashouri"],
      licenses: ["Apache 2.0"],
      links: %{"GitHub" => "https://github.com/ourway/ex_persian"}
    ]
  end




  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    # Specify extra applications you'll use from Erlang/Elixir
    [extra_applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:my_dep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [ {:ex_doc, ">= 0.0.0", only: :dev}]
  end
end
