require_relative './db/config'
require_relative './app/models/teacher'
require_relative './app/models/student'
require_relative './app/models/students_teachers'



# teacher_count = Teacher.all.length

# Student.all.each { |student|
#   # p student 
#   # p Teacher.all.sample.id
#   student.update(teacher_id: rand(1..teacher_count) ) }

p sample_student = Student.all.sample

p sample_teacher = Teacher.all.sample

Student.all.each do |student|
  teacher_array = Teacher.all.dup
  rand(1..4).times { 
    student.teachers << teacher_array.delete_at(rand(teacher_array.length))
    # student.teachers << teacher_array.sample
  }

end

puts Student.all.sample.teachers
