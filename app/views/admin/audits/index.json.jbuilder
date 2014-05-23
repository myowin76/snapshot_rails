json.array!(@admin_audits) do |admin_audit|
  json.extract! admin_audit, :id, :audit_date, :store_id, :photos_count
  json.url admin_audit_url(admin_audit, format: :json)
end
