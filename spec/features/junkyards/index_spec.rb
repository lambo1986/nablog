require "rails_helper"

RSpec.describe "Junkyard Index", type: :feature do
  it "exists" do
    visit junkyards_path

    expect(current_path).to eq("/junkyards")
    expect(page).to have_content("The Junkyard")
  end
end
