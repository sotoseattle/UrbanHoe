class AddAttachmentAvatarToPlants < ActiveRecord::Migration
  def self.up
    change_table :plants do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :plants, :avatar
  end
end
