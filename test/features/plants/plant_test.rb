require "test_helper"

feature 'When I go to the plant page' do
  scenario 'it should be created' do
    sign_in
    visit plants_path
    click_on 'New Plant'
    fill_in 'plant_plant_name', with: 'Beefsteak Tomato'
    fill_in 'plant_instructions', with:("Kitten Ipsum Baxter, wonderful likes give me
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
    sign_in
    visit plants_path
    click_on 'New Plant'
    fill_in 'plant_plant_name', with: 'Not Beets'
    fill_in 'plant_instructions', with: 'Edit me'
    click_on 'Create Plant'
    click_on 'Edit'
    fill_in 'plant_plant_name', with: 'Beets'
    fill_in 'plant_instructions', with: "We're editing some content"
    click_on 'Update Plant'
    page.must_have_content "Plant was successfully updated."
  end
end
