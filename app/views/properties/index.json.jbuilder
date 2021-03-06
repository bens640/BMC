json.array!(@properties) do |property|
  json.extract! property, :id, :name, :address, :city, :state, :zip, :sqft
  json.url property_url(property, format: :json)
end
