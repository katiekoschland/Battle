feature '#attack' do
  scenario "attack player 2 and get a confirmation" do
  sign_in_and_play
  click_button( 'attack')
  expect(page).to have_content "Bruno attacked Bob"
 end
end
