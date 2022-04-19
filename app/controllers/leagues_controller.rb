class LeaguesController < ApplicationController
  before_action :set_league, only: %i[ show edit update destroy ]

  # GET /leagues or /leagues.json
  def index
    @leagues = League.all
  end

  # GET /leagues/1 or /leagues/1.json
  def show
     # @leagues = league.find(params[:id])
  end

  # GET /leagues/new
  def new
    @league = League.new
  end

  # GET /leagues/1/edit
  def edit
  end

  # POST /leagues or /leagues.json
  def create
    @league = League.new(name: params[:name], type: params[:type])
    @league.save
    if @league.save 
      redirect_to @league
  end
  def update
    @leagues.update(params.require(:leagues).permit(:name, :type))
      if @players.update(params.require(:leagues).permit(:name, :type))
        flash[:message] = "Updated Successfully!"
        redirect_to @leagues
      else
        render 'edit'  
      end
    end 
  # DELETE /leagues/1 or /leagues/1.json
  def destroy
    flash[:message] = "#{@leagues.name} was successfully deleted."
    @leagues.destroy
    redirect_to leagues_path
     end

  private
    def set_league
      @league = League.find(params[:id])
    end

    def league_params
      params.fetch(:league, {})
    end
  end

end
