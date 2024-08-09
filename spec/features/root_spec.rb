require "rails_helper"

RSpec.describe "Root Page", type: :feature do
  it "displays the welcome message" do
    visit root_path

    expect(current_path).to eq(root_path)
    expect(page).to have_content("Nathan's Junkyard")
    expect(page).to have_content("A collection of stuff I don't want to keep to myself, lest I forget about it.")
  end

  it "has a link to the 'About' page" do
    visit root_path

    expect(page).to have_link("About Nathan")
  end

  it "has a link to the 'Contact' page" do
    visit root_path

    expect(page).to have_link("Contact Nathan")
  end

  it "has a link to the 'Junkyard' page" do
    visit root_path

    expect(page).to have_link("Junkyard")
  end

  it "has a link to the 'Thoughts' page" do
    visit root_path

    expect(page).to have_link("Thoughts")
  end

  describe "email subscription form", type: :feature do
    it "displays the form for a visitor to enter info for email updates" do
      visit root_path

      expect(page).to have_content("Subscribe to Emails")
    end
  end
end
