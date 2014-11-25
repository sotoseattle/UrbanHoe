class ImageController < ApplicationController

  def new
    @uploader = Plant.new.image
    @uploader.success_action_redirect = new_plant_url
  end

end
