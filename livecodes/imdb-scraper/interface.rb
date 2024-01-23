require 'yaml'
require_relative 'scraper'

# 1. scrape the top five
movie_urls = scrape_movies_url

# 2. scrape each one of the top five movies
movies = movie_urls.map do |url|
  scrape_movie(url)
end

# 3. dump into a yml file
File.open('movies.yml', 'wb') do |file|
  file.write(movies.to_yaml)
end
