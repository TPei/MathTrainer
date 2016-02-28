class CreateExerciseTypes < ActiveRecord::Migration
  def change
    create_table :exercise_types do |t|
      t.string :title
      t.string :description
      t.belongs_to :Level
      t.float :min_number
      t.float :max_number
      t.boolean :floats_allowed

      t.timestamps null: false
    end
  end
end
