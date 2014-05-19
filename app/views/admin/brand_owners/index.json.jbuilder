json.array!(@admin_brand_owners) do |admin_brand_owner|
  json.extract! admin_brand_owner, :id, :name
  json.url admin_brand_owner_url(admin_brand_owner, format: :json)
end
