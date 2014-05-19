json.array!(@admin_brands) do |admin_brand|
  json.extract! admin_brand, :id, :name, :brand_owner_id
  json.url admin_brand_url(admin_brand, format: :json)
end
