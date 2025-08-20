class Classroom < ApplicationRecord
  belongs_to :school
  has_many :students, dependent: :destroy

  validates :number, :letter, :students_count, presence: true
end
