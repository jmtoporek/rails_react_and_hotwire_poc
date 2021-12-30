class Hotwire::PlayersController < PlayersController

  def get_player_path(player)
    hotwire_player_url(player)
  end

  def get_players_path
    hotwire_players_url
  end

end