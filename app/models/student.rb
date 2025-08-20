class Student < ApplicationRecord
  belongs_to :classroom, counter_cache: :students_count
  belongs_to :school

  validates :first_name, :last_name, :surname, presence: true

  SECRET_SALT = "SecretToken"

  def generate_token(student_id)
    Digest::SHA256.hexdigest("#{student_id}" + "#{SECRET_SALT}")
  end
end
