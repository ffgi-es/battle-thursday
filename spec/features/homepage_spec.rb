

feature 'homepage' do
  scenario 'it should say testing infrastructure' do
    visit '/'
    expect(page).to have_content('Testing infrastructure working!')
  end
end
