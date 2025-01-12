class ThoughtsController < ApplicationController
  def index
    @thoughts_art1 = ArtFacade.new.art_single(47895)
  end
end
