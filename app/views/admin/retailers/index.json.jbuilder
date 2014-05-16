json.array!(@admin_retailers) do |admin_retailer|
  json.extract! admin_retailer, :id, :name, :sector_id
  json.url admin_retailer_url(admin_retailer, format: :json)
end
