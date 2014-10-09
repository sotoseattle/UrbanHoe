require 'test_helper'

feature 'When I want to delete a plant from the db' do
  scenario 'it should be destroyed' do
    sign_in
    visit plants_path
    page.find('table tbody tr', text: 'kale').find('a', text: 'Destroy').click
    page.text.must_include 'Plant was successfully destroyed'
  end
end
