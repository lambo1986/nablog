class ArtPoro
  attr_reader :year, :image_url, :department, :title, :culture

  def initialize(attrs)
    @year = attrs[:accessionYear]
    @image_url = attrs[:primaryImage]
    @department = attrs[:department]
    @title = attrs[:title]
    @culture = attrs[:culture]
  end
end
