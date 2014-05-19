json.array!(@retailers) do |retailer|
  json.extract! retailer, :id, :name, :retailer_id
  json.url admin_brand_url(retailer, format: :json)
end
