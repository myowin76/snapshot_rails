json.array!(@admin_store_formats) do |admin_store_format|
  json.extract! admin_store_format, :id, :name
  json.url admin_store_format_url(admin_store_format, format: :json)
end
