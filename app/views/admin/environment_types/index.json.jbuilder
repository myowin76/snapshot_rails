json.array!(@admin_environment_types) do |admin_environment_type|
  json.extract! admin_environment_type, :id, :name
  json.url admin_environment_type_url(admin_environment_type, format: :json)
end
