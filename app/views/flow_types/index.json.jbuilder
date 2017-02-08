json.array!(@flow_types) do |flow_type|
  json.extract! flow_type, :id, :name
  json.url flow_type_url(flow_type, format: :json)
end
