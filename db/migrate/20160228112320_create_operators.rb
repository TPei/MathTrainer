class CreateOperators < ActiveRecord::Migration
  def change
    create_table :operators do |t|
      t.string :title
      t.string :description
      t.belongs_to :level
      t.string :operator_name
      t.string :sign
      t.boolean :is_unary
      t.float :min_number
      t.float :max_number
      t.boolean :floats_allowed

      t.timestamps null: false
    end
  end
end
