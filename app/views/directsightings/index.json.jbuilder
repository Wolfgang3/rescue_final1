json.array!(@directsightings) do |directsighting|
  json.extract! directsighting, :id, :species, :status, :city_name, :user_name, :email, :phno, :latitude, :longitude
  json.url directsighting_url(directsighting, format: :json)
end
