def sign_in_and_play
  visit '/'
  fill_in "name_one", with: "Bruno"
  fill_in "name_two", with: "Bob"
  click_button 'Submit'
end
