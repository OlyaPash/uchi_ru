class CreateClassrooms < ActiveRecord::Migration[8.0]
  def change
    create_table :classrooms do |t|
      t.integer :number
      t.string :letter
      t.integer :students_count, default: 0
      t.references :school, null: false, foreign_key: true

      t.timestamps
    end
  end
end
