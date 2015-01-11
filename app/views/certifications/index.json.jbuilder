json.array!(@certifications) do |certification|
  json.extract! certification, :id, :name, :completed_date, :expiry_date, :user_id
  json.url certification_url(certification, format: :json)
end
