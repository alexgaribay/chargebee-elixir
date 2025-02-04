defmodule Chargebee.Config do
  def site do
    Application.get_env(:chargebee, :site, System.get_env("CHARGEBEE_SITE")) |> check_value
  end

  def api_key do
    Application.get_env(:chargebee, :api_key, System.get_env("CHARGEBEE_API_KEY")) |> check_value
  end

  def api_impl do
    Application.get_env(:chargebee, :api_impl, Chargebee.Request)
  end

  def convert_to_struct? do
    Application.get_env(:chargebee, :convert_to_struct, :true)
  end

  defp check_value(nil) do
    raise ArgumentError, message: "Invalid config value given"
  end

  defp check_value(value), do: value

end
