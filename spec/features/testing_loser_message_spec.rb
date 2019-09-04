feature 'It shows a lose message to the loser' do
  scenario 'player one loses the game' do
    sign_in_and_play()
    19.times { attack_helper }
    expect(page).to have_content('Mittens lost!')

  end
end
