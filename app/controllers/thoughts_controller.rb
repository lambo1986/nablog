class ThoughtsController < ApplicationController
  def index
    @thoughts_art1 = ArtFacade.new.art_single(47895)
    @thoughts_art2 = ArtFacade.new.art_single(10882)
    @thoughts_art3 = ArtFacade.new.art_single(7357)
  end
end
