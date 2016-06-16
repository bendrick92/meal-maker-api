class CreateMainCourses < ActiveRecord::Migration
  def change
    create_table :main_courses do |t|
      t.text :description
      t.boolean :is_active

      t.timestamps null: false
    end
  end
end
