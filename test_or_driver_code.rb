require_relative './db/config'
require_relative './app/models/student'
require_relative './app/models/teacher'

# p Teacher.all
# # puts Teacher.methods.sort

# p Student.first

# teacher_count = Teacher.all.length

# Student.all.each { |student|
#   # p student 
#   # p Teacher.all.sample.id
#   student.update(teacher_id: rand(1..teacher_count) ) }

# p Student.first

p sample_student = Student.all[ rand(Student.all.length) ]

p sample_teacher = sample_student.teacher

p sample_teacher.students
