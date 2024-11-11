require 'dotenv/load'

NewsApi = News.new(ENV['NEWS_API_KEY'])
