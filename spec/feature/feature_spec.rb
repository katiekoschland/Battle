
feature '#names' do
    scenario "asks for players' names and saves them" do
      visit '/'
      fill_in "name_one", with: "Bruno"
      fill_in "name_two", with: "Bob"
      click_button 'Submit'
      expect(page).to have_content "Bruno vs Bob"
    end
end

feature "View hit points" do
    scenario 'see Player 2 hit points' do
      visit '/'
      fill_in "name_one", with: "Bruno"
      fill_in "name_two", with: "Bob"
      click_button 'Submit'
      expect(page).to have_content "Bob: 20HP"
    end
end
