# Copyright 2018 Steven Crothers (https://github.com/scrothers)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

defmodule Pepper.MixProject do
  use Mix.Project

  def project do
    [
      app: :pepper,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      source_url: "https://github.com/scrothers/pepper"
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
      {:ex_doc, "~> 0.14", only: :dev},
      {:elixir_make, "~> 0.4", runtime: false}
    ]
  end

  defp description do
    """
    A wrapper around Sodium for Elixir with excellent documentation.
    """
  end

  defp package do
    [
      name: "pepper",
      files: ["config", "src", "lib", "mix.exs", "Makefile", "LICENSE*", "README*"],
      maintainers: ["steven.crothers@gmail.com"],
      licenses: ["Apache License, Version 2.0"],
      links: %{"Github" => "https://github.com/scrothers/pepper"}
    ]
  end
end
