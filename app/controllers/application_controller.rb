class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?


  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :hand])
  end

  def after_sign_out_path_for(resource)
    new_user_session_path
  end
end

private
def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:team_id, :order_id])
end