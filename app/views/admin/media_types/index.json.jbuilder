json.array!(@admin_media_types) do |admin_media_type|
  json.extract! admin_media_type, :id, :name
  json.url admin_media_type_url(admin_media_type, format: :json)
end
