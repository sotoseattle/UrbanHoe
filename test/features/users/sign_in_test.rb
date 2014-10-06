require 'test_helper'

feature('As an administrator, I want to be able to sign in,
  so that I can perform manipulate the database.') do
  scenario 'sign in successful' do
    visit '/'
    click_on 'WebMaster'

    fill_in 'Email', with: 'admin@urbanhoe.com'
    fill_in 'Password', with: 'password'
    click_on 'Log in'

    page.must_have_content 'Signed in successfully'
    page.wont_have_content 'Invalid email address or password'
  end

  scenario 'sign in fails' do
    visit '/'
    click_on 'WebMaster'

    fill_in 'Email', with: 'hacker@urbanhoe.com'
    fill_in 'Password', with: 'password'
    click_on 'Log in'

    page.wont_have_content 'Signed in successfully'
    page.must_have_content 'Invalid email address or password'
  end
end
