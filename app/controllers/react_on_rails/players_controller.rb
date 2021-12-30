class ReactOnRails::PlayersController < PlayersController

  def search
    if params[:query].present?
      @players = Player.where("name LIKE ?", "%#{params[:query]}%")
    else
      @players = Player.all
    end
  
    render json: @players
  end

end