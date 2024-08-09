require "rails_helper"

RSpec.describe ArtPoro do
  describe "initialization" do
    it "exists" do
      attrs = {
        objectID: 34545,
        isHighlight: false,
        accessionNumber: "29.100.1135",
        accessionYear: "1929",
        isPublicDomain: true,
        primaryImage: "https://images.metmuseum.org/CRDImages/aa/original/29.100.1135_001AA2015.jpg",
        primaryImageSmall: "https://images.metmuseum.org/CRDImages/aa/web-large/29.100.1135_001AA2015.jpg",
        additionalImages: [
            "https://images.metmuseum.org/CRDImages/aa/original/29.100.1135_002AA2015.jpg"
        ],
        constituents: nil,
        department: "Arms and Armor",
        objectName: "Knife handle (Kozuka)",
        title: "Knife Handle (Kozuka)",
        culture: "Japanese"
      }

      art = ArtPoro.new(attrs)

      expect(art).to be_a(ArtPoro)
      expect(art.year).to eq("1929")
    end
  end
end
