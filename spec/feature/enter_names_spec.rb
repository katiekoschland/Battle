feature '#names' do
    scenario "asks for players' names and saves them" do
      sign_in_and_play
      expect(page).to have_content "Bruno vs Bob"
    end
end
