feature 'attack player' do
  scenario 'attacking player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content("Player 1 attacked Player 2!")
  end

end
