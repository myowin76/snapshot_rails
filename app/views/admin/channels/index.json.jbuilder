json.array!(@admin_channels) do |admin_channel|
  json.extract! admin_channel, :id, :name
  json.url admin_channel_url(admin_channel, format: :json)
end
