students = ['Harry Potter', 'Ronald Weasley', 'Hermione Granger']
# INDEXES         0                1                   2                   3

# range = 1..10
# p range.to_a

# range_two = 1...10
# p range_two.to_a

for index in (0..2)
  puts "- #{students[index]}"
end

for student in students
  puts "- #{student}"
end
