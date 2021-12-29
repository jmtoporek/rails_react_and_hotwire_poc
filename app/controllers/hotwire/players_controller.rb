class Hotwire::PlayersController < PlayersController

  def search
    if params[:query].present?
      @users = Player.where("name LIKE ?", "%#{params[:query]}%")
    else
      @users = Player.all
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