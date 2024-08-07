require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'validations and associations' do
    it { should have_many(:images) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:category) }
    it { should validate_presence_of(:body) }
  end

  describe 'initialization' do
    it 'exists with valid attributes' do
      post1 = Post.new(title: 'Sample Post', category: 'Technology', body: 'Today we are discussing Ruby on Rails')

      expect(post1).to be_valid
      expect(post1.images).to be_empty
      expect(post1.title).to eq('Sample Post')
    end

    it 'can have an image associated with it' do
      post1 = Post.new(title: 'Sample Post', category: 'Technology', body: 'Today we are discussing Ruby on Rails')
      image1 = post1.images.build(image_data: 0100101001100110, image_name: 'image1.jpg')

      expect(post1).to be_valid
      expect(post1.images).not_to be_empty
      expect(post1.images.first).to be_an Image
      expect(image1.image_data).to be_an Integer
      expect(image1.image_name).to be_a String
    end
  end
end
