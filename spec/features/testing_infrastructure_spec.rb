require "capybara/rspec"
require_relative "../../lib/app"


# feature 'Testing infrastructure' do
#   scenario 'can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working'
#   end
# end

feature 'Entre names' do
  scenario 'Players can enter their names' do
    visit('/')
    fill_in :Player_1, with: 'Bob'
    fill_in :Player_2, with: 'Brian'
    click_button 'Submit'
    expect(page).to have_content 'Bob'
  end
end

  feature 'Viewing Hit Points' do
    scenario 'Each player can see the others points' do
      visit ('/')
      fill_in :Player_1, with: 'Bob'
      fill_in :Player_2, with: 'Brian'
      click_button 'Submit'
      expect(page).to have_content "Player 1 is: Bob, they have 20 points"
    end
  end
