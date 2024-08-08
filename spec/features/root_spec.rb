require "rails_helper"

RSpec.describe "Root Page", type: :feature do
  it "displays the welcome message" do
    visit "/"

    expect(current_path).to eq("/")
    expect(page).to have_content("Nathan's Junkyard")
    expect(page).to have_content("A collection of stuff I don't want to keep to myself, lest I forget about it.")
  end
end
