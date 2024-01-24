require 'pry-byebug'
def full_name(first_name, last_name)
  first_name = first_name.capitalize
  binding.pry
  last_name = last_name.capitalize
  "#{first_name} #{last_name}"
end

#=> "Andre Menezes"
puts full_name('yuri', 'santos')

# Inner 'binding.pry' commands ⤵️
# next => run the next line
# continue => to let your code run until it finds another binding.pry or until the end
# !!! => to exit binding.pry
