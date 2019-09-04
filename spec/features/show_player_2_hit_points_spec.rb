feature 'Show hit points for player 2' do
  scenario 'Home page player 2 has full points' do
  sign_in_and_play()
  expect(page).to have_content 'Mittens HP: 100'
  end
end
