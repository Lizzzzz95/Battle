# feature 'Testing infrastructure' do
#   scenario 'Can run app and check page content' do
#     visit('/')
#     expect(page).to have_content 'Testing infrastructure working!'
#   end
# end

feature 'Enter names' do

  scenario 'submitting names' do
    sign_in_and_play
    expect(page).to have_content 'Name1 vs. Name2'
  end

end
