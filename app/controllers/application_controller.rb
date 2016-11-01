class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :device_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :username, :bio, :location, :email, :password, :password_comfirmation])

    devise_parameter_sanitizer.permit(:accout_update, keys: [:name, :username, :bio, :location, :email, :password, :password_comfirmation])
  end


end
