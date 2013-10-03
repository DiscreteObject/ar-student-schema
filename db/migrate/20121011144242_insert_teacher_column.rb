require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class InsertTeacherColumn < ActiveRecord::Migration
  def change
    add_column :students, :teacher_id, :integer
    # change_table :students do |t|
    #   add_column :teacher_id
    # end
  end
end
