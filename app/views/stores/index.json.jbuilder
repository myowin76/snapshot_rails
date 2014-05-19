json.array!(@stores) do |store|
  json.extract! store, :id, :name, :address, :address2, :address3, :postcode, :store_format_id, :retailer_id, :country_id, :longitude, :latitude, :description
  json.url store_url(store, format: :json)
end
