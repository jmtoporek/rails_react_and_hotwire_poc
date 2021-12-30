class ReactOnRails::PlayersController < PlayersController

    def create
      @player = Player.new(player_params)
  
      respond_to do |format|
        if @player.save
          format.html { redirect_to react_on_rails_player_url(@player), notice: "Player was successfully created." }
          format.json { render :show, status: :created, location: @player }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @player.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /players/1 or /players/1.json
    def update
      respond_to do |format|
        if @player.update(player_params)
          format.html { redirect_to react_on_rails_player_url(@player), notice: "Player was successfully updated." }
          format.json { render :show, status: :ok, location: @player }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @player.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /players/1 or /players/1.json
    def destroy
      @player.destroy
  
      respond_to do |format|
        format.html { redirect_to react_on_rails_players_url, notice: "Player was successfully destroyed." }
        format.json { head :no_content }
      end
    end

  def search
    if params[:query].present?
      @players = Player.where("name LIKE ?", "%#{params[:query]}%")
    else
      @players = Player.all
    end
  
    render json: @players
  end

end