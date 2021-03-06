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
    sign_in_and_play
    expect(page).to have_content 'Bob'
  end
end

  feature 'Viewing Hit Points' do
    scenario 'Each player can see the others points' do
      sign_in_and_play
      expect(page).to have_content "Player 1 is: Bob, they have 60 points"
    end
  end

  feature 'Attack!' do
    scenario 'Player 1 attackes player 2' do
      sign_in_and_play
      click_button "Attack!"
      expect(page).to have_content "Bob, you have attacked Brian (That is quite mean really)"
    end
  end

  feature 'Decduct points'do
      scenario 'Player two loses 10 points' do
        sign_in_and_play
        click_button "Attack!"
        click_link "Ok!"
        expect(page).to have_content "Player 2 is: Brian, they have 50 points"
        # expect(page).not_to_have_content "Brian has 20 points"
      end
  end
