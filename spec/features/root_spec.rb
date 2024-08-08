require "rails_helper"

RSpec.describe "Root Page", type: :feature do
  it "displays the welcome message" do
    visit "/"

    expect(current_path).to eq("/")
    expect(page).to have_content("Nathan's Junkyard")
  end
end
