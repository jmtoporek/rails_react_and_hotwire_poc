class ReactOnRails::PlayersController < PlayersController

  def get_player_path(player)
    react_on_rails_player_url(player)
  end

  def get_players_path
    react_on_rails_players_url
  end

end