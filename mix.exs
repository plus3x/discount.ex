defmodule Mix.Tasks.Compile.Discount do
  @shortdoc "Compiles discount library"

  def run(_) do
    Mix.shell.info System.cmd("make share/discount.so")
  end
end

defmodule Discount.Mixfile do
  use Mix.Project

  def project do
    [ app: :discount,
      version: "0.0.1",
      elixir: "~> 0.10.3",
      compilers: [:discount, :elixir, :app],
      source_url: "https://github.com/asaaki/discount.ex"
    ]
  end

  # Configuration for the OTP application
  def application do
    [mod: { Discount, [] }]
  end

end