defmodule AdventOfCode2019.MixProject do
  use Mix.Project

  def project do
    [
      app: :advent_of_code_2019,
      version: "0.1.0",
      elixir: "~> 1.9",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      aliases: aliases(),
      preferred_cli_env: [
        espec: :test
      ]
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
      {:credo, "~> 1.1.0", only: [:dev, :test], runtime: false},
      {:espec, "~> 1.7", only: [:dev, :test], runtime: false}
    ]
  end

  defp aliases do
    [
      lint: "credo --strict",
      solutions: &solutions/1,
      espec: "espec --trace"
    ]
  end

  defp solutions(_) do
    Mix.Task.run("run", ["./lib/advent_of_code_2019/solutions.exs"])
  end
end
