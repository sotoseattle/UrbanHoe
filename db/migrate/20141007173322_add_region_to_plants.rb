class AddRegionToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :region, :integer
  end
end
