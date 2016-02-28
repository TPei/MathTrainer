class ExerciseTypeOperator < ActiveRecord::Migration
  def change
    create_table :exercise_types_operators, id: false do |t|
      t.belongs_to :exercise_type, index: true
      t.belongs_to :operator, index: true
    end
  end
end
