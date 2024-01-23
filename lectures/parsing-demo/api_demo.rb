# frozen_string_literal: true

require 'json'
require 'open-uri' # Used to make HTTP requests in Ruby

# TODO: - Let's fetch name and bio from a given GitHub username
url = 'https://api.github.com/users/dedemenezes'

serialized_file = URI.open(url).read
user = JSON.parse(serialized_file)
p user['avatar_url']
