json.array!(@messages) do |message|
  json.extract! message, :id, :recipient_email, :text, :delay_until_time, :timezone_offset, :sent
  json.url message_url(message, format: :json)
end
