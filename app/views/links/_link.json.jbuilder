json.extract! link, :id, :link_title, :link_url, :link_description, :user_id, :created_at, :updated_at
json.url link_url(link, format: :json)
