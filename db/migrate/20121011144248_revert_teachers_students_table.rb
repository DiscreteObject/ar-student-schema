require_relative '../config'
require_relative '20121011144244_create_teachers_students_table'

# this is where you should use an ActiveRecord migration to 

class RevertTeachersStudentsTable < ActiveRecord::Migration
  def change
    revert CreateTeachersStudentsTable
  end
end
