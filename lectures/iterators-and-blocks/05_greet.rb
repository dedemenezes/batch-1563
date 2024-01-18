def greet(first_name, last_name)
  full_name = "#{first_name.capitalize} #{last_name.upcase}"
  # return "Hello, #{full_name}"
  message = yield(full_name)
  return message
end

pt_greeting = greet('Harry', 'Potter') do |name|
  # p name
  "Oi, #{name}"
end

puts pt_greeting

es_greeting = greet('Harry', 'Potter') do |name|
  # p name
  "Hola, #{name}"
end

puts es_greeting
