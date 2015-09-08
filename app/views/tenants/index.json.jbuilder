json.array!(@tenants) do |tenant|
  json.extract! tenant, :id, :name, :owner, :phone, :email, :type
  json.url tenant_url(tenant, format: :json)
end
