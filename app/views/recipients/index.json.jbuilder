json.array!(@recipients) do |recipient|
  json.extract! recipient, :id, :name, :email
  json.url recipient_url(recipient, format: :json)
end
