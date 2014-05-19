json.array!(@brands) do |brand|
  json.extract! brand, :id, :name, :brand_owner_id
  json.url brand_url(brand, format: :json)
end