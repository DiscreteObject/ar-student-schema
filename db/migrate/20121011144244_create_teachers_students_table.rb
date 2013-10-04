require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateTeachersStudentsTable < ActiveRecord::Migration
  def change
    create_table :teachers_students do |t|
      t.belongs_to :student_id
      t.belongs_to :teacher_id
      

      t.timestamps
    end
  end
end
