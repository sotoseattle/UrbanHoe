class AddSeasonToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :season, :string
  end
end
