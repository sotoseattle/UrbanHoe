require 'test_helper'

feature 'When I want to delete a plant from the db' do
  scenario 'it should be destroyed' do
    # when admin creates a plant
    new_plant
    # then clicks destroy button
    page.find('tbody tr:last').click_on 'Destroy'
    # plant should be destroyed
    page.text.must_include 'Plant was successfully destroyed'
  end
end
