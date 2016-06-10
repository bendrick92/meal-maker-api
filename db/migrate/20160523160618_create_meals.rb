class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.integer :mealTypeId
      t.integer :userId
      t.integer :mainCourseId
      t.integer :sideId
      t.boolean :isPublic
      t.boolean :isActive
      
      t.timestamps null: false
    end
    
    add_reference :meal_types, :meals, index: true
    add_reference :users, :meals, index: true
    add_reference :main_courses, :meals, index: true
    add_reference :sides, :meals, index: true
  end
end
