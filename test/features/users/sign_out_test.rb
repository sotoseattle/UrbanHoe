require 'test_helper'

feature('As an administrator, I want to be able to sign out') do
  scenario 'An admin signs out successfully' do
    visit '/'
    click_on 'WebMaster'

    fill_in 'Email', with: 'admin@urbanhoe.com'
    fill_in 'Password', with: 'password'
    click_on 'Log in'

    visit '/'
    click_on 'Log out'

    page.must_have_content 'Signed out successfully'
    page.wont_have_content 'Log out'
  end
end
