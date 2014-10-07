require "test_helper"

feature 'As an admin, when visiting the home page' do
  scenario 'I expect to see a link to add plants to the database' do
    visit '/'
    click_on 'WebMaster'
    fill_in 'Email', with: 'admin@urbanhoe.com'
    fill_in 'Password', with: 'password'
    click_on 'Log in'
    page.must_have_content 'Create Plant'
  end

  scenario('I do not wish to see the link
  until I have logged in to keep users from seeing a cluttered page') do
    visit '/'
    page.wont_have_content 'Create Plant'
  end
end
