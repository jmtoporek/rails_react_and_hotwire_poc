class Hotwire::PlayersController < PlayersController
  layout "hotwire_layout"

  def get_player_path(player)
    hotwire_player_url(player)
  end

  def get_players_path
    hotwire_players_url
  end

end