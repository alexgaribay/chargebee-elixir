defmodule Chargebee.Addon do
  import Chargebee.API
  @derive [Poison.Encoder]
  @chargebee_url "/addons"

  defstruct [ :id,
              :name,
              :invoice_name,
              :description,
              :type,
              :charge_type,
              :price,
              :currency_code,
              :period,
              :period_unit,
              :unit,
              :status,
              :archived_at,
              :enabled_in_portal,
              :tax_code,
              :invoice_notes,
              :taxable,
              :meta_data,

              # Specific fields for Subscription Addon
              :quantity,
              :unit_price
            ]

  def create(addon) do
    post(@chargebee_url, addon) |> handle_response
  end

  def update(addon) do
    post("#{@chargebee_url}/#{addon.id}", addon) |> handle_response
  end

  def delete(id) do
    post("#{@chargebee_url}/#{id}/delete", %{}) |> handle_response
  end

  def retrieve(id) do
    get("#{@chargebee_url}/#{id}", %{}) |> handle_response
  end

  def list(params \\ %{}) do
    get(@chargebee_url, params) |> handle_list_response
  end

end
