class ChangeRegionFormatInPlants < ActiveRecord::Migration
  def up
    change_column :plants, :region, :string
  end

  def down
    change_column :plants, :region, :integer
  end
end
