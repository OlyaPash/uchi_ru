class Student < ApplicationRecord
  belongs_to :classroom
  belongs_to :school

  validates :first_name, :last_name, :surname, presence: true
end
