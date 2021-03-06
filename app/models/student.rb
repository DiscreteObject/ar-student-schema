require_relative '../../db/config'

class Student < ActiveRecord::Base
  has_and_belongs_to_many :teachers
  validates :email, :format => { :with => /[\w\.\-]+@\S+\.[a-zA-Z]+{2,}/ }, :uniqueness => true
  validates :age, :numericality => { :greater_than_or_equal_to => 5 }
  validate :check_phone_number 
  # validates :phone, :uniqueness => true

  def name
    self[:first_name] + " " + self[:last_name]
  end

  def age
    unless self[:birthday].nil?
      (Date.today.year - self[:birthday].year)
    end
  end

  def check_phone_number
    if phone.gsub(/[^\d]/,'').length < 10
      errors.add(:phone, 'Enter a valid phone number' )
    end
  end
  
end
