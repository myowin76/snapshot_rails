json.array!(@admin_settings) do |admin_setting|
  json.extract! admin_setting, :id, :name, :value
  json.url admin_setting_url(admin_setting, format: :json)
end
