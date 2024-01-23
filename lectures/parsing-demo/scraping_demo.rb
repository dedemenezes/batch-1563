# frozen_string_literal: true

require 'open-uri'
require 'nokogiri'

# Let's scrape recipes from https://www.bbcgoodfood.com
url = 'https://www.bbcgoodfood.com/search?q=chicken'
html_file = URI.open(url).read
nokogiri_doc = Nokogiri::HTML.parse(html_file)
nokogiri_doc.search('.layout-md-rail__primary .card__section.card__content a').each do |card|
  # p card.attributes
  p card.text
  p card.attribute('href').value
end
# p search_results
