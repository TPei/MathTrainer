class CreateOperators < ActiveRecord::Migration
  def change
    create_table :operators do |t|
      t.string :title
      t.string :sign
      t.boolean :is_unary

      t.timestamps null: false
    end
  end
end
