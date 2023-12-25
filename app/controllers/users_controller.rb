class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
  end

  def edit
  end

  def index
  end  

  def update
  end

  def destroy
    @user = User.find(current_user.id)
    @user.destroy
    redirect_to new_user_registration_path
  end

  def leave
    @user = User.find(current_user.id)
  end
end
