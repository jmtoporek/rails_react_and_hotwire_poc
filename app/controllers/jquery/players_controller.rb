class Jquery::PlayersController < PlayersController
  layout "jquery_layout"
  
  def get_player_path(player)
    jquery_player_url(player)
  end

  def get_players_path
    jquery_players_url
  end

end