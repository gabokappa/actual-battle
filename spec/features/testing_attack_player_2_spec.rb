feature 'It confirms attack on player' do
  scenario 'Player 1 attacks' do
    sign_in_and_play()
    click_on("attack")
    expect(page).to have_content 'Dave attacks Mittens!'
  end

  scenario 'Player 2 attacks' do
    sign_in_and_play()
    attack_helper()
    click_on("attack")
    expect(page).to have_content 'Mittens attacks Dave!'
  end

end

feature 'It reduces HP by 10'do
scenario 'Player 1 attacks Player 2 and reduces HP' do
  sign_in_and_play()
  attack_helper()
  expect(page).to have_content 'Mittens HP: 90'
end
end
