class Student < ApplicationRecord
  belongs_to :classroom, counter_cache: :students_count
  belongs_to :school

  validates :first_name, :last_name, :surname, presence: true
end
