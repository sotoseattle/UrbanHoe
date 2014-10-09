require 'test_helper'

feature 'testing framework activated' do
  scenario 'when i run rake, tests are run' do
    assert 1, 1
  end
end

feature 'bootstrap framework activated' do
  scenario 'the site is displaying bootstrap classes' do
    visit root_path
    page.has_css?('.container-fluid').must_equal true
    page.has_css?('.row').must_equal true
    page.has_css?('.col-md-12').must_equal true
  end
end
