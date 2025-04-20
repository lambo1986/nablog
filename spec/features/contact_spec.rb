require 'rails_helper'

RSpec.describe "contact page", type: :feature do
  describe "GET /contact" do
    it "should exist" do
      visit contact_path

      expect(page).to have_content("Contact Nathan Lambertson")
    end
  end

  describe "GET /contact" do 
    it "should have my phone number and email address" do 
      visit contact_path

      expect(page).to have_content("Phone Number:")
      expect(page).to have_content("Email:")
    end
  end
end
