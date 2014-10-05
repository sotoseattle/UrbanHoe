Rails.env = 'test'  # ENV['RAILS_ENV'] ||= 'test'
puts "Current environment: #{Rails.env}"

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails/capybara'
require 'capybara/poltergeist'
# require 'pry-rescue/minitest'

module ActiveSupport
  class TestCase
    fixtures :all
    Capybara.javascript_driver = :poltergeist
  end
end
