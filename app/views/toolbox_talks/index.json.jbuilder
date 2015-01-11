json.array!(@toolbox_talks) do |toolbox_talk|
  json.extract! toolbox_talk, :id, :user_id, :invoice_date, :attendees, :topics, :comments, :inspections, :inspection_comments, :confirm
  json.url toolbox_talk_url(toolbox_talk, format: :json)
end
