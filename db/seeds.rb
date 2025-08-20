Classroom.destroy_all
School.destroy_all

school = School.create!

classroom = Classroom.create!(number: 1, letter: "A", school_id: school.id)
