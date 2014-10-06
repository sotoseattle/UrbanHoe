require "test_helper"

feature 'When I create a new plant' do
  scenario 'it should be created' do
    visit root_path
    click_on 'New Plant'
    fill_in 'Plant_id', with: 'Beefsteak Tomato'
    fill_in 'Instructions', with:("Kitten Ipsum Baxter, wonderful likes give me
     fish kitty room leap roll cat sneak. Best biting, heart home cat kitty
     friend old biting sleepy happy sleepy healing prince aww long hair front
     around jump boy cat. House biting, Zooey terrified eyes old love skeptical
     tabby passive kitten cat 9 lives roll stretching. Awesomeness kat spoon mercedes
     cramped cat gf's up biting adopted cat watching oh rescuing eat classy judging
     you long hair babies lady cat sleeps! Odd, cat watching leo success kills sit up.")
    click_on 'Create Plant'
    page.must_have_content 'Plant was successfully created.'
  end

  scenario 'it should be editable' do
    visit root_path
    click_on 'Edit'
    fill_in 'Plant_id', with: 'Beets'
    fill_in 'Instructions', with: "We're editing some content"
    click_on 'Create Plant'
    page.must_have_content "Plant was successfully created."
  end

  scenario 'it should be destroyable' do
    visit root_path
    click_on 'Destroy'
    page.must_have_content 'Plant was successfully destroyed.'
  end
end
