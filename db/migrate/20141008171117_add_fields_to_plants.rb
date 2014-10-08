class AddFieldsToPlants < ActiveRecord::Migration
  def up
    rename_column :plants, :instructions, :description
    add_column :plants, :planting, :string
    add_column :plants, :harvesting, :string
    add_column :plants, :varieties, :string
    add_column :plants, :plant_size, :string
    add_column :plants, :minimum_soil_depth_inches, :integer
    add_column :plants, :grow_as, :string
    add_column :plants, :family, :string
  end

  def down
    rename_column :plants, :description, :instructions
    remove_column :plants, :planting, :string
    remove_column :plants, :harvesting, :string
    remove_column :plants, :varieties, :string
    remove_column :plants, :plant_size, :string
    remove_column :plants, :minimum_soil_depth_inches, :integer
    remove_column :plants, :grow_as, :string
    remove_column :plants, :family, :string
  end
end
