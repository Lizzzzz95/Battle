feature 'Display Player Hitpoints' do

  scenario 'See player 1 hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'Name1 Hitpoints: 10'
  end

  scenario 'See player 2 hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'Name2 Hitpoints: 10'
  end

end
