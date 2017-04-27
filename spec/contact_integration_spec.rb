require "capybara/rspec"
require "./app"

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe("the contact path", {:type => :feature}) do
  it("visits the home page and clicks ") do
    visit("/")
    click_link("Add a Contact")
    expect(page).to have_content("First name")
  end

  it("goes to the new contact page") do
    visit("/contacts/new")
    fill_in("first_name", :with => "John")
    click_button("Add Contact")
    expect(page).to have_content("You've successfully")
    click_link("Back to contact list")
    expect(page).to have_content("John")
  end

  it("goes to the new contact page") do
    visit("/contacts")
    click_link("Back to homepage")
    expect(page).to have_content("View My Contacts")
  end

  it("goes to the phones page") do
    visit('/contacts') do
      click_link(", John")
      expect(page).to have_content('Phone Num')
      expect(page).to have_content('at')
    end
  end

end
