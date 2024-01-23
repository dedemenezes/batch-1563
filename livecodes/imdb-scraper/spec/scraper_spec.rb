require_relative '../scraper'



# describe '#scrape_movies_url' do
#   it 'returns an array with the top five urls' do
#     actual = scrape_movies_url
#     expected = [
#       "https://www.imdb.com/title/tt0111161/",
#       "https://www.imdb.com/title/tt0068646/",
#       "https://www.imdb.com/title/tt0468569/",
#       "https://www.imdb.com/title/tt0071562/",
#       "https://www.imdb.com/title/tt0050083/"
#     ]

#     expect(actual).to eq(expected)
#   end
# end

describe '#scrape_movie' do
  it 'returns a hash containing the right information' do
    actual = scrape_movie('https://www.imdb.com/title/tt0468569')
    expected = {
      cast: [ "Christian Bale", "Heath Ledger", "Aaron Eckhart" ],
      director: "Christopher Nolan",
      storyline: "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
      title: "The Dark Knight",
      year: 2008
    }

    expect(actual).to eq(expected)
  end
end
