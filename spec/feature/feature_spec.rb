require 'capybara'

describe "homepage", :type => :feature do
  it "shows a message" do
    visit '/'
    expect(page).to have_content "Testing infrastructure working!"
  end
end
