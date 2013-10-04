require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudentsTeachers < ActiveRecord::Migration
  def change
    create_table :students_teachers do |t|
      t.belongs_to :student_id
      t.belongs_to :teacher_id
      

      t.timestamps
    end
  end
end
