json.array!(@articles) do |article|
  json.extract! article, :id, :titile, :content, :share, :user_id, :access_authority
  json.url article_url(article, format: :json)
end
