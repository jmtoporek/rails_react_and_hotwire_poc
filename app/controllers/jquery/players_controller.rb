class Jquery::PlayersController < PlayersController

  def get_player_path(player)
    jquery_player_url(player)
  end

  def get_players_path
    jquery_players_url
  end

end