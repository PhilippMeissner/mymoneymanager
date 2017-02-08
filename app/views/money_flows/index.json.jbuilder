json.array!(@money_flows) do |money_flow|
  json.extract! money_flow, :id, :amount_cents, :description, :name, :flow_type
  json.url money_flow_url(money_flow, format: :json)
end
