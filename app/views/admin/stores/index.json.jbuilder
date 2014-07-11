json.array!(@admin_stores) do |admin_store|
  json.extract! admin_store, :id, :name, :address, :address2, :address3, :town, :postcode, :store_format_id, :retailer_id, :country_id, :environment_type_id, :channel_id, :longitude, :latitude, :description
  json.url admin_store_url(admin_store, format: :json)
end
