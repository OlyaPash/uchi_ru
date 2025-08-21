Student.destroy_all
Classroom.destroy_all
School.destroy_all

school = School.create!

classroom = Classroom.create!(number: 1, letter: "A", school_id: school.id)
# classroom5a = Classroom.create!(number: 5, letter: "А", school_id: school.id)

Student.create!(
  first_name: "Вячеслав",
  last_name: "Абдурахмангаджиевич",
  surname: "Мухобойников-Сыркин",
  classroom_id: classroom1б.id,
  school_id: school.id
)

# Student.create!(
#   first_name: "Милана",
#   last_name: "Вениаминовна",
#   surname: "Гусева",
#   classroom_id: classroom1б.id,
#   school_id: school.id
# )

# Student.create!(
#   first_name: "Мирон",
#   last_name: "Игоревич",
#   surname: "Зайцев",
#   classroom_id: classroom5a.id,
#   school_id: school.id
# )
