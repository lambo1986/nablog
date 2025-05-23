require "rails_helper"

RSpec.describe "thoughts index page", type: :feature do
  it "exists" do
    visit thoughts_path

    expect(current_path).to eq("/thoughts")
    expect(page).to have_content("Thoughts by Nathan")
  end

  it "has images from an API" do 
    visit thoughts_path 

    expect(current_path).to eq("/thoughts")
    expect(page).to have_css("img[alt='Thought Art 1']")
    expect(page).to have_css("img[alt='Thought Art 2']")
  end
end
