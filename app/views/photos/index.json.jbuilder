json.array!(@photos) do |photo|
  json.extract! photo, :id, :audit_id, :headline, :published
  json.url photo_url(photo, format: :json)
end
