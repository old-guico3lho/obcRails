json.recent_albums @recent_albums.each do |album|
  json.id album.id
  json.name album.name
  #   json.artist.name album.artist.name
  json.cover_url url_for(album.cover)
end

json.recommended_albums @recommended_albums.each do |album|
  json.id album.id
  json.name album.name
  #   json.artist.name album.artist.name
  json.cover_url url_for(album.cover)
end
