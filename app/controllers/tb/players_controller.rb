class Tb::PlayersController < PlayersController
  layout "tb_layout"

  def index
    @players = self.players_search

    if turbo_frame_request?
      render turbo_stream: turbo_stream.replace(
        'players_turbo_frame',
        partial: 'players_table',
        locals: { players: @players}
      )
    else # this is implied and not necessary 
     render :index
    end
  end

  def get_player_path(player)
    tb_player_url(player)
  end

  def get_players_path
    tb_players_url
  end

end