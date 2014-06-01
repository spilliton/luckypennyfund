json.array!(@recipients) do |recipient|
  json.extract! recipient, :id, :first_name, :last_name, :email
  json.url recipient_url(recipient, format: :json)
end
