class Turbo::PlayersController < PlayersController
  layout "turbo_layout"

  def get_player_path(player)
    turbo_player_url(player)
  end

  def get_players_path
    turbo_players_url
  end

end