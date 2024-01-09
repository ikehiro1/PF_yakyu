class TeamsController < ApplicationController
  before_action :authenticate_user!
  def show
    @team = Team.find(params[:id])
  end

  def index
    @teams = Team.all
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
    @team = Team.find(params[:id])
    @team.update(team_params)
    redirect_to team_path
  end

  def destroy
  end 

  def create
    @team = Team.new(team_params)
    @team.save
    redirect_to teams_path
  end 

  def new
    @team = Team.new
  end
end

private
def team_params
  params.require(:team).permit(:team_name,:team_img)
end 