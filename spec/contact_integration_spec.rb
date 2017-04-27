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
    expect(page).to have_content("'madam' is a palindrome")
  end
end
