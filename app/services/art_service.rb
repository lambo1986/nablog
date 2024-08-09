class ArtService

  def art_by_id(id)
    get_url("#{id}")
  end

  private

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: 'https://collectionapi.metmuseum.org/public/collection/v1/objects/')
  end
end
