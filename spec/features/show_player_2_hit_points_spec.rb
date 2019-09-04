feature 'Show hit points for player 2' do
  scenario 'Home page player 2 has full points' do
  visit('/')
  fill_in :player_1_name, with: 'Dave'
  fill_in :player_2_name, with: 'Mittens'
  click_button 'Submit'
  expect(page).to have_content 'Mittens HP: 100'
  end
end
