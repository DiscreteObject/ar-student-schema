class Teacher < ActiveRecord::Base
  has_many :students
  validates :email, :uniqueness => true
  validate :name, :uniqueness => true # why validate works here but validates works for age in student.rb, both are methods.

  def name
     self[:first_name] + " " + self[:last_name]
   end 

end
