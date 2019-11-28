require_relative 'web_helpers'

feature 'homepage' do
  scenario 'it should say testing infrastructure' do
    visit '/'
    expect(page).to have_content('Testing infrastructure working!')
  end

  scenario 'it should fill in the players names' do
    sign_in_and_play
    expect(page).to have_content "Hisham vs. Alastair"
  end

  scenario 'it should player two hit points' do
    sign_in_and_play
    expect(page).to have_content "Player 2 hit points: 100"
  end
end
