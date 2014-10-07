Rails.env = 'test'  # ENV['RAILS_ENV'] ||= 'test'
puts "Current environment: #{Rails.env}"

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails/capybara'
require 'capybara/poltergeist'
# require 'pry-rescue/minitest'

module ActiveSupport
  class TestCase
    ActiveRecord::Migration.check_pending!
    fixtures :all
    Capybara.javascript_driver = :poltergeist

    def sign_in
      visit '/'
      click_on 'WebMaster'

      fill_in 'Email', with: 'admin@urbanhoe.com'
      fill_in 'Password', with: 'password'
      click_on 'Log in'
    end
  end
end
