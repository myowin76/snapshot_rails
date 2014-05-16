json.array!(@admin_sectors) do |admin_sector|
  json.extract! admin_sector, :id, :name
  json.url admin_sector_url(admin_sector, format: :json)
end
