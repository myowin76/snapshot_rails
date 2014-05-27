json.array!(@brand_owners) do |brand_owner|
  json.extract! brand_owner, :id, :name
  #json.url sector_url(brand_owner, format: :json)
end