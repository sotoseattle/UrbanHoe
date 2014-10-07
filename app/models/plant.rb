class Plant < ActiveRecord::Base
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:medium/bear.jpg"
  # validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  validates_attachment :avatar, :presence => true,
  :content_type => { :content_type => ["image/jpeg", "image/png"] },
  :size => { :in => 0..10.kilobytes }
end
