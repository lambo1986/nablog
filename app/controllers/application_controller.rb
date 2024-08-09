class ApplicationController < ActionController::Base
  def welcome
    @weird_art = ArtFacade.new.art_single(45656)
  end
end
