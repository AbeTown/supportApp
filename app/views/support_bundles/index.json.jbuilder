json.array!(@support_bundles) do |support_bundle|
  json.extract! support_bundle, :id, :uid, :date_uploaded, :date_created, :company, :model, :error_type, :environment, :unit_type, :firmware
  json.url support_bundle_url(support_bundle, format: :json)
end
