students = ["Harry Potter", "Ronald Weasley", "Hermione Granger"]
# INDEXES         0                1                   2

# CRUD

# CREATE -> add new element
students << "Draco Malfoy"
students.push("Draco Malfoy")
p students

# # READ
p students[2]
p students[-1]


# # UPDATE
students[1] = "Gina Weasley"
p students

# # DELETE
students.delete_at(0)
p students

# LENGTH || SIZE
p students.length
