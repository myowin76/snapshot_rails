json.array!(@admin_media_locations) do |admin_media_location|
  json.extract! admin_media_location, :id, :name
  json.url admin_media_location_url(admin_media_location, format: :json)
end
