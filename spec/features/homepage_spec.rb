

feature 'homepage' do
  scenario 'it should say testing infrastructure' do
    visit '/'
    expect(page).to have_content('Testing infrastructure working!')
  end

  scenario 'it should fill in the players names' do
    visit '/'
    fill_in 'player_1', with: "Hisham"
    fill_in 'player_2', with: "Alastair"
    click_button 'Submit'
    expect(page).to have_content "Hisham vs. Alastair"
  end
end
