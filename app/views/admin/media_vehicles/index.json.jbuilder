json.array!(@admin_media_vehicles) do |admin_media_vehicle|
  json.extract! admin_media_vehicle, :id, :name
  json.url admin_media_vehicle_url(admin_media_vehicle, format: :json)
end
