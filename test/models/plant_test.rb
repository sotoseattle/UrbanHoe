require 'test_helper'

class PlantTest < ActiveSupport::TestCase
  def plant
    @plant ||= Plant.new
  end
end
