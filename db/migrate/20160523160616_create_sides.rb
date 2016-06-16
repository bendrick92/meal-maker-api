class CreateSides < ActiveRecord::Migration
  def change
    create_table :sides do |t|
      t.text :description
      t.boolean :is_active
      
      t.timestamps null: false
    end
  end
end
