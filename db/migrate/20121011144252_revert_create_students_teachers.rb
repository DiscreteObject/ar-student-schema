require_relative '../config'
require_relative '20121011144250_create_students_teachers'

# this is where you should use an ActiveRecord migration to 

class RevertCreateStudentsTeachers < ActiveRecord::Migration
  def change
    revert CreateStudentsTeachers
  end
end
