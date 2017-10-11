feature 'Testing infrastructure' do
  scenario 'can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure working'
  end

  scenario 'Players can enter their names' do
    visit('/')
    fill_in('Player 1', with: 'Bob')
    click_button 'Submit'
    expect(page).to have_content 'Bob'
  end
  
end
