require 'capybara'

describe "testing feature infrastructure", :type => :feature do

  context '#names' do
    it "asks for players' names and saves them" do
      visit '/'
      fill_in "name_one", with: "Bruno"
      fill_in "name_two", with: "Bob"
      click_button 'Submit'
      expect(page).to have_content "Bruno vs Bob"
    end
  end
end
