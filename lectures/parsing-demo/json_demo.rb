# frozen_string_literal: true

require 'json'

# TODO: - let's read/write data from beatles.json
filepath = 'data/beatles.json'

serialized_file = File.read(filepath)
# p serialized_file

beatles = JSON.parse(serialized_file)
p beatles.class
p beatles['beatles'][1]['instrument']

# Storing

beatles = {
  beatles: [
    {
      first_name: 'John',
      last_name: 'Lennon',
      instrument: 'Guitar'
    },
    {
      first_name: 'Paul',
      last_name: 'McCartney',
      instrument: 'Bass Guitar'
    }
    # etc...
  ]
}

File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(beatles))
end
