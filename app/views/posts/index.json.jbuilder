json.array!(@posts) do |post|
  json.extract! post, :id, :title, :body
  json.posted_at post.created_at.strftime("%d %b. %Y")
  json.url post_url(post, format: :json)
end
