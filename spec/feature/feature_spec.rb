require 'capybara'

describe "testing feature infrastructure", :type => :feature do
  it "can run app and shows a message" do
    visit '/'
    expect(page).to have_content "Testing infrastructure working!"
  end

  context '#names' do
    it "asks for players' names and saves them" do
      visit '/'
      fill_in "name_one", with: "Bruno"
      fill_in "name_two", with: "Bob"
      click_button 'Submit'
      expect(page). to have_content "Bruno vs Bob"
    end
  end
end
