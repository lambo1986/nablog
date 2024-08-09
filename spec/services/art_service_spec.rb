require "rails_helper"

RSpec.describe "Metropolitan Museum of Art API", vcr: true, type: :request do
  describe "#art_by_id" do
    it "should return a single piece of art by ID" do
      art = ArtService.new.art_by_id(34545)

      expect(art).to be_a(Hash)
      expect(art[:objectID]).to eq(34545)
      expect(art[:primaryImage]).to be_a(String)
    end
  end
end
