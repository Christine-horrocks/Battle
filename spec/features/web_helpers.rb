def sign_in_and_play
  visit('/')
  fill_in :Player_1, with: 'Bob'
  fill_in :Player_2, with: 'Brian'
  click_button 'Submit'
end
