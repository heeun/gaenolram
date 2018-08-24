json.extract! meeting, :id, :title, :content, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
