json.array!(@complaints) do |complaint|
  json.extract! complaint, :id, :species, :status, :city_name, :latitude, :longitude, :user_id
  json.url complaint_url(complaint, format: :json)
end
