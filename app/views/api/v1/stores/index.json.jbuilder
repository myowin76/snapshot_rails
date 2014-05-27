json.array!(@stores) do |store|
  json.extract! store, :id, :name, :longitude, :latitude
  json.url store_url(store, format: :json)
end