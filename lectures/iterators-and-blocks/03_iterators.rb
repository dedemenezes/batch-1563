students = ["Harry Potter", "Ronald Weasley", "Hermione Granger"]
# INDEXES         0                1                   2

### EACH
students.each do |student|
  puts "Hello #{student}"
end

### EACH WITH INDEX
students.each_with_index do |student, index|
  puts "#{index + 1}. #{student}"
end

### MAP
upcased_musicians = students.map do |student|
  student.upcase
end
p upcased_musicians

#### IF YOU ARE USING THIS PATTERN BELOW ####
# upcased_musicians = []
# students.each do |student|
#   upcased_musicians.push(student.upcase)
# end
#### YOU SHOULD USE THE MAP ITERATOR!😉 ####

first_names = students.map do |student|
  student.split(" ").first
end
p first_names

### COUNT
h_students_counter = students.count do |student|
  # CONDITION
  student.start_with?("H")
end
p h_students_counter

### SELECT
h_students = students.select do |student|
  student.start_with?("H")
end
p h_students
