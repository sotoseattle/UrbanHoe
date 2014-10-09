class Plant < ActiveRecord::Base
  mount_uploader :image, ImageUploader
end
