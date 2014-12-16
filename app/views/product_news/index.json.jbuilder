json.array!(@product_news) do |product_news|
  json.extract! product_news, :id, :title, :description, :image_url, :price
  json.url product_news_url(product_news, format: :json)
end
