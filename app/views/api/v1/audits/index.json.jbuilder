json.array!(@audits) do |audit|
  json.extract! audit, :id, :audit_date
  json.url audit_url(audit, format: :json)
end