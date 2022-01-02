class Poj::PlayersController < PlayersController
  layout "poj_layout"
  
  def get_player_path(player)
    poj_player_url(player)
  end

  def get_players_path
    poj_players_url
  end

end