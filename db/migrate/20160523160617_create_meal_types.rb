class CreateMealTypes < ActiveRecord::Migration
  def change
    create_table :meal_types do |t|
      t.text :description
      t.boolean :isActive
      
      t.timestamps null: false
    end
  end
end
