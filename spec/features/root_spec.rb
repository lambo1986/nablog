require "rails_helper"

RSpec.describe "Root Page", type: :feature do
  it "displays the welcome message" do
    visit "/"

    expect(current_path).to eq("/")
    expect(page).to have_content("Nathan's Junkyard")
    expect(page).to have_content("A collection of stuff I don't want to keep to myself, lest I forget about it.")
  end

  it "has a link to the 'About' page" do
    visit "/"

    expect(page).to have_link("About Nathan")
  end

  it "has a link to the 'Contact' page" do
    visit "/"

    expect(page).to have_link("Contact Nathan")
  end

  it "has a link to the 'Junkyard' page" do
    visit "/"

    expect(page).to have_link("Junkyard")
  end

  it "has a link to the 'Thoughts' page" do
    visit "/"

    expect(page).to have_link("Thoughts")
  end
end
