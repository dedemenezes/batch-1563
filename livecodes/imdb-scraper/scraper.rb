
require 'open-uri'
require 'nokogiri'

USER_AGENT = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/109.0.0.0 Safari/537.36"
# Scrape the top 5 urls
def scrape_movies_url
  # 1. Make a HTTP request to the page
  html_content = URI.open("https://www.imdb.com/chart/top/", {
    "User-Agent" => USER_AGENT
  }).read
  # 2. Parse the HTML using Nokogiri
  doc = Nokogiri::HTML.parse(html_content)
  p doc.class
  # 3. Search for the content to scrape
  doc.search('.ipc-title-link-wrapper')[0..4].map do |link|
    url = link.attribute('href').value
    "https://www.imdb.com#{url.gsub(/\?.+/, '')}"
  end
end

# Scrape the information for each one of the movies(url's)
def scrape_movie(url)
  # 1. Make a HTTP request to the page
  html_content = URI.open(url, {
    "User-Agent" => USER_AGENT,
    "Accept-Language" => "en-US"
  }).read
  # 2. Parse the HTML using Nokogiri
  doc = Nokogiri::HTML.parse(html_content)
  # p doc.class
  # 3. Search for the content to scrape
  director = doc.search('.ipc-metadata-list__item:contains("Director") a').first.text.strip
  cast = doc.search('.ipc-metadata-list__item:contains("Stars") ul a')[0..2].map do |element|
    element.text
  end

  storyline = doc.search('.sc-466bb6c-2.chnFO').first.text.strip
  year = doc.search('.ipc-inline-list.ipc-inline-list--show-dividers.sc-d8941411-2.cdJsTz.baseAlt a').first.text.strip.to_i
  title = doc.search('h1').text.strip
  {
    director: director,
    year: year,
    storyline: storyline,
    title: title,
    cast: cast
  }
end
