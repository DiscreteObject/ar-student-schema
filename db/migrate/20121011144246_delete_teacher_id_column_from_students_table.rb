require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class DeleteTeacherIdColumnFromStudentsTable < ActiveRecord::Migration
  def change
    change_table :students do |t|
      t.remove :teacher_id
    end
  end
end
