feature 'It confirms that games switches opponent' do
  scenario 'Player 1 attacks, then Player 2 attacks and both lose HP' do
    sign_in_and_play()
    attack_helper()
    attack_helper()
    expect(page).to have_content 'Dave HP: 90'
  end
end
