class AddImageProcessedToPlants < ActiveRecord::Migration
  def change
    add_column :plants, :image_processed, :boolean
  end
end
