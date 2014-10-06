require "test_helper"

feature("
  As an administrator, I want to be able to sign in,
  so that I can perform manipulate the database.") do
  scenario "sign up" do
    visit "/"
    click_on "WebMaster"

    fill_in "Email", with: "admin@urbanhoe.com"
    fill_in "Password", with: "password"
    click_on "Sign in"

    page.must_have_content "Welcome! You have signed in successfully"
    page.wont_have_content "There was a problem with you signing in"
  end
end
