require 'rails_helper'

RSpec.describe "contact page", type: :feature do
  describe "GET /contact" do
    it "should exist" do
      visit contact_path

      expect(page).to have_content("Contact Nathan Lambertson")
    end
  end
end
