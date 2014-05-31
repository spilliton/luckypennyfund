json.array!(@donors) do |donor|
  json.extract! donor, :id, :name, :email, :organization
  json.url donor_url(donor, format: :json)
end
