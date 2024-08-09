require "rails_helper"

RSpec.describe "about page", type: :feature do
  it "displays the about page" do
    visit about_path

    expect(current_path).to eq(about_path)
    expect(page).to have_content("Who is Nathan?")
  end
end
