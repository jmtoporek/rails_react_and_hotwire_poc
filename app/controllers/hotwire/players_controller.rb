class Hotwire::PlayersController < PlayersController

  def search
    if params[:query].present?
      @players = Player.where("name LIKE ?", "%#{params[:query]}%")
    else
      @players = Player.all
    end
  
    render turbo_stream: turbo_stream.replace(
      'players',
      partial: 'list',
      locals: {
        players: @players
      }
    )
  end

end