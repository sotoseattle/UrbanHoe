require 'test_helper'

feature 'As an admin, when visiting the home page' do
  scenario 'I expect to see a link to add plants to the database' do
    sign_in
    page.must_have_content 'Add New Plant'
  end

  scenario('I do not wish to see the link
  until I have logged in to keep users from seeing a cluttered page') do
    visit '/'
    page.wont_have_content 'Add New Plant'
  end

  scenario('I expect that when I click the link New Plant I will be
  redirected to a page where I can make add a plant to the database') do
    sign_in
    click_on 'Add New Plant'
    page.must_have_content 'New Plant'
  end

  scenario('I want to be able to go to a page where i can easily see a list
  of all plants in the database so I can easily edit and destroy them') do
    sign_in
    click_on 'See All Plants'
    page.must_have_content 'All Edible Plants'
  end
end

feature 'As an admin when adding new plants to the database' do
  scenario('I want to be able to easily add information using a
  nicely designed interface') do
    sign_in
    click_on 'New Plant'
    page.must_have_content 'Hardiness Region'
    page.must_have_content 'Planting Tips'
  end
end
