require_relative './db/config'
require_relative './app/models/student.rb'
require_relative './app/models/teacher.rb'

require 'faker'

9.times do |i|
  Teacher.create! :first_name => Faker::Name.first_name,
                  :last_name => Faker::Name.last_name,
                  :email => Faker::Internet.email,
                  :phone => Faker::PhoneNumber.cell_phone

end

# s = Student.create! :email => 'go@away.com',
#                 :birthday => Date.new(1970,1,1),
#                 :phone => '415-555-1212'

#should fail on validating phone number


# s = Student.create!(:email => 'fake@nothing.com',
#                     :birthday => Date.new(1970,1,1),
#                     :phone => '415-555-1212')

# should fail on validating phone number uniqueness
# p s.errors
