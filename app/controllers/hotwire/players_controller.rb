class Hotwire::PlayersController < PlayersController

  def create
    @player = Player.new(player_params)

    respond_to do |format|
      if @player.save
        format.html { redirect_to hotwire_player_url(@player), notice: "Player was successfully created." }
        format.json { render :show, status: :created, location: @player }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

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