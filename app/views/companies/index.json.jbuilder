json.array!(@companies) do |company|
  json.extract! company, :id, :name, :user_id
  json.url company_url(company, format: :json)
end
