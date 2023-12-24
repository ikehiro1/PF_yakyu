class TeamsController < ApplicationController
  def show
  end

  def index
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
    redirect_to team_path
  end 

  def new
    @team = Team.new
  end
end
