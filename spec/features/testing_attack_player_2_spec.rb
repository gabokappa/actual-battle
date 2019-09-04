feature 'It confirms attack on player' do
  scenario 'Player 1 attacks' do
    sign_in_and_play()
    click_on("attack")
    expect(page).to have_content 'Dave attacks Mittens!'
  end
end

feature 'It reduces HP by 10'do
  scenario 'Player 1 attacks Player 2 and reduces HP' do
    sign_in_and_play()
    click_on("attack")
    click_on("whatevs")
    expect(page).to have_content 'Mittens HP: 90'
  end
end
