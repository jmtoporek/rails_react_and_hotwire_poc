class Jquery::PlayersController < PlayersController

  def players_frame
    if params[:query].present?
      @players = Player.where("name LIKE ?", "%#{params[:query]}%")
    else
      @players = Player.all
    end
    render partial: 'hotwire/players/list'
  end

  def get_player_path(player)
    jquery_player_url(player)
  end

  def get_players_path
    jquery_players_url
  end

end