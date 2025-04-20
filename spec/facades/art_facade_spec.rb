require "rails_helper"

RSpec.describe ArtFacade, vcr: true, type: :facade do
  describe "#art_single" do
    it "returns a single artwork" do
      art = ArtFacade.new.art_single(34545)
      
      expect(art).to be_a(ArtPoro)
      expect(art.title).to be_a(String)
      expect(art.image_url).to be_a(String)
    end

    it "returns another single artwork" do
      art = ArtFacade.new.art_single(47895)

      expect(art).to be_a(ArtPoro)
      expect(art.title).to be_a(String)
      expect(art.image_url).to be_a(String)
    end
  end
end
