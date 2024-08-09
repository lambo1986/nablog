class ArtFacade
  def art_single(id)
    call = ArtService.new.art_by_id(id)
    ArtPoro.new(call)
  end
end
