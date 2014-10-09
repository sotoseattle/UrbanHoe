class RemoveAttachmentAvatarFromPlants < ActiveRecord::Migration
  def self.up
    # remove_attachment :plants, :avatar
  end

  def self.down
    # add_attachment :plants, :avatar
  end
end
