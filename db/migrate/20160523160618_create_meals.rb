class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.references :meal_type, index: true, foreign_key: true
      t.references :main_course, index: true, foreign_key: true
      t.references :side, index: true, foreign_key: true
      
      t.boolean :is_public
      t.boolean :is_active
      
      t.timestamps null: false
    end
  end
end
