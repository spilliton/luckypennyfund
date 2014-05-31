json.array!(@recipients) do |recipient|
  json.extract! recipient, :id, :name, :email, :organization, :recipient_id
  json.url recipient_url(recipient, format: :json)
end
