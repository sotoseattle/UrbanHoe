Rails.env = 'test'  # ENV['RAILS_ENV'] ||= 'test'
puts "Current environment: #{Rails.env}"

require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'minitest/rails/capybara'
require 'capybara/poltergeist'
require 'capybara-extensions'
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

def sign_in
  visit new_user_session_path
  fill_in 'Email', with: users(:admin).email
  fill_in 'Password', with: 'password'
  click_on 'Log in'
end

def new_plant
  sign_in
    visit plants_path
    click_on 'New Plant'
    click_link('plant_avatar')
    attach_file('Bear.jpg', '/public/images/bear.jpg')
    fill_in 'Plant name', with: 'Beefsteak Tomato'
    fill_in 'Instructions', with: ('Kitten Ipsum Baxter, wonderful likes give me
     fish kitty room leap roll cat sneak. Best biting, heart home cat kitty
     friend old biting sleepy happy sleepy healing prince aww long hair front
     around jump boy cat. House biting, Zooey terrified eyes old love skeptical
     tabby passive kitten cat 9 lives roll stretching. Awesomeness kat spoon mercedes
     cramped cat gf\'s up biting adopted cat watching oh rescuing eat classy judging
     you long hair babies lady cat sleeps! Odd, cat watching leo success kills sit up.')
    fill_in 'Region', with: '8'
    fill_in 'Season', with: 'Cold'
    click_on 'Create Plant'
    page.must_have_content 'Plant was successfully created.'
end
