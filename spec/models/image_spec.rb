require 'rails_helper'

RSpec.describe Image, type: :model do
  describe 'associations and validations' do
    it { should belong_to(:post) }
    it { should validate_presence_of(:image_data) }
    it { should validate_presence_of(:image_name) }
  end

  describe "initialization" do
    it 'exists, but needs a post to do so' do
      post1 = Post.new(title: 'Sample Post', category: 'Technology', body: 'Today we are discussing Ruby on Rails')
      image1 = Image.new(image_data: 0100101001100110, image_name: 'image1.jpg')

      post1.images << image1
      
      expect(image1.image_data).to be_an Integer
      expect(image1.image_name).to be_a String
    end
  end
end
