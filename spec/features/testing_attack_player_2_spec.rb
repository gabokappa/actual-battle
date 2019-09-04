feature 'It confirms attack on player' do
  scenario 'Player 1 attacks' do
    sign_in_and_play()
    click_on("attack")
    expect(page).to have_content 'Dave attacks Mittens!'
  end
end
