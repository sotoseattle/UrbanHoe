require 'test_helper'

class PlantTest < ActiveSupport::TestCase
  def plant
    sign_in
    @plant ||= Plant.new
  end
end
