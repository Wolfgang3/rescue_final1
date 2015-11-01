json.array!(@reports) do |report|
  json.extract! report, :id, :user_id, :sighting_id, :details
  json.url report_url(report, format: :json)
end
