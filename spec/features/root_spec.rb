require "rails_helper"

RSpec.describe "Root Page", type: :feature do
  before(:each) do
    visit root_path
  end

  it "displays the welcome message" do
    expect(current_path).to eq(root_path)
    expect(page).to have_content("Nathan's Junkyard")
    expect(page).to have_content("A collection of stuff I don't want to keep to myself, lest I forget about it.")
  end

  it "has a link to the 'About' page" do
    expect(page).to have_link("About Nathan")
  end

  it "has a link to the 'Contact' page" do
    expect(page).to have_link("Contact Nathan")
  end

  it "has a link to the 'Junkyard' page" do
    expect(page).to have_link("Junkyard")
  end

  it "has a link to the 'Thoughts' page" do
    expect(page).to have_link("Thoughts")
  end

  describe "email subscription form", type: :feature do
    it "displays the form for a visitor to enter info for email updates" do
      expect(page).to have_content("Subscribe to Emails")
      expect(page).to have_field("Your Name")
      expect(page).to have_field("Your Email Address")
    end

    it "successfully submits the form and sends a welcome email" do
      fill_in "Your Name", with: "Test User"
      fill_in "Your Email Address", with: "testuser@example.com"

      expect {
        click_button "Subscribe"
      }.to change { ActionMailer::Base.deliveries.count }.by(1)

      expect(page).to have_content("Thank you for subscribing!")
    end

    it "does not send an email if the form is incomplete" do
      fill_in "Your Name", with: ""
      fill_in "Your Email Address", with: "testuser@example.com"

      expect {
        click_button "Subscribe"
      }.not_to change { ActionMailer::Base.deliveries.count }

      expect(page).to have_content("There was an error with your subscription. Please try again.")
    end
  end
end
