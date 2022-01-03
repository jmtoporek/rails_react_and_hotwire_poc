class Tb::PlayersController < PlayersController
  layout "tb_layout"

  def get_player_path(player)
    tb_player_url(player)
  end

  def get_players_path
    tb_players_url
  end

end