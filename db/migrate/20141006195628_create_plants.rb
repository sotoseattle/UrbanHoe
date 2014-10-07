class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string :plant_name
      t.text :instructions
      t.timestamps
    end
  end
end
