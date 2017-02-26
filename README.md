
# Chargebee

An Elixir library to interface with the Chargebee API.

## Installation


  1. Add `chargebee` to your list of dependencies in `mix.exs`:

    ```elixir
    def deps do
      [{:chargebee, "~> 0.1.0"}]
    end
    ```

## Configuration

Update your config file to include Chargebee to include your API key and site name.
For example, if your site is `awesome-app.chargebee.com` your site would be `awesome-app`.

```
config :chargebee,
  api_key: "YOUR_API_KEY",
  site: "awesome-app"
```