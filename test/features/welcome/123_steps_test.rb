require 'test_helper'

feature 'Zipcode functionality' do
  scenario 'happy path' do
    visit root_path
    fill_in 'zipo', with: '98102'
    click_on 'mysubmit1'
    h = find('#hhregion', visible: false)
    sleep 3
    h.value.must_equal '8'
  end

  scenario 'invalid query' do
    visit root_path
    fill_in 'zipo', with: 'hola'
    click_on 'mysubmit1'
    h = find('#hhregion', visible: false)
    h.value.must_equal '0'
  end
end

feature '' do
  scenario 'happy path' do

  end
end
