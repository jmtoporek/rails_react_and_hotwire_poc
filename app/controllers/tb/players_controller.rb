class Tb::PlayersController < PlayersController
  layout "tb_layout"

  def index
    @players = self.players_search
  
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @players }
      format.turbo_stream { render turbo_stream: turbo_stream.replace(
          'players_turbo_frame',
          partial: 'players_table',
          locals: { players: @players}
        )
      }
    end
  end

  def get_player_path(player)
    tb_player_url(player)
  end

  def get_players_path
    tb_players_url
  end

end