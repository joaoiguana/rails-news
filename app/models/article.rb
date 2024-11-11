require_relative '../../config/initializers/news_api.rb'

class Article < ApplicationRecord
  def get_article
    NewsApi.get_news
  end
end
