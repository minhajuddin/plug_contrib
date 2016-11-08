# PlugContrib

A collection of useful plugs for your plug/phoenix based web apps.

## Current Plugs

  1. **PlugContrib.Gzip** to gzip your responses

## Installation

The package can be installed as:

  1. Add `plug_contrib` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:plug_contrib, "~> 0.1.0"}]
    end
    ```

  2. Ensure `plug_contrib` is started before your application:

    ```elixir
    def application do
      [applications: [:plug_contrib]]
    end
    ```

