class PlayersController < ApplicationController
  before_action :set_player, only: %i[ show edit update destroy ]

  # GET /players or /players.json
  def index
    @players = Players.all
  end

  # GET /players/1 or /players/1.json
  def show
   # @players = Players.find(params[:id])
  end 

  # GET /players/new
  def new
    @players = Players.new
   
  end

  # GET /players/1/edit
  def edit
  end

  # POST /players or /players.json
  def create
    @players = Players.new(username: params[:username], email: params[:email])
    @players.save
    if @players.save 
      redirect_to @players
    else 
      render 'new'
    end
  end

  # PATCH/PUT /players/1 or /players/1.json
  def update
    @players.update(params.require(:players).permit(:name, :army, :wins, :loses, :username))
      if @players.update(params.require(:players).permit(:name, :army, :wins, :loses, :username))
        flash[:message] = "Updated Successfully!"
        redirect_to @players
      else
        render 'edit'  
      end
    end    


  # DELETE /players/1 or /players/1.json
  def destroy
    flash[:message] = "#{@players.name} was successfully deleted."
    @players.destroy
    redirect_to players_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_players
      @players = Players.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def player_params
      params.fetch(:players, {})
    end

end
