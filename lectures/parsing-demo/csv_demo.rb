# frozen_string_literal: true

require 'csv' # Importing CSV library to read and store CSV files

# TODO: - let's read/write data from beatles.csv
filepath = 'data/beatles.csv'

# Parsing
# In CSV you ALWAYS get an ARRAY OF STRINGS

CSV.foreach(filepath, headers: :first_row) do |row|
  # p row
  p "#{row['First Name']} | #{row['Last Name']} | #{row['Instrument']}"
end

# Storing
# In CSV you can ONLY STORE an ARRAY OF STRINGS

CSV.open(filepath, 'wb') do |csv|
  csv << ['First Name', 'Last Name', 'Instrument']
  csv << %w[John Lennon Guitar]
  csv << ['Paul', 'McCartney', 'Bass Guitar']
  # ...
end
