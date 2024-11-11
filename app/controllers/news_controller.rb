class NewsController < ApplicationController
  def index
    articles = NewsApi.get_top_headlines(country: 'us')
    @articles = articles.map do |article|
      Article.create(title: article.title, description: article.description, url: article.url, published_at: article.publishedAt)
    end
  end
end
