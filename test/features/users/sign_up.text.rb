require 'test_helper'

feature('As an administrator, I don\'t want anybody to be able to signup,
  so that only hardcoded users are allowed as admins.') do
  scenario 'sign up not available' do
    expect { visit new_user_registration_path }.to
    raise_error(ActionController::RoutingError)
  end
end
