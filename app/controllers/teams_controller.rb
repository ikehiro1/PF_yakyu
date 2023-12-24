class TeamsController < ApplicationController
  def show
  end

  def index
    @teams = Team.all
  end

  def edit
  end

  def update
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