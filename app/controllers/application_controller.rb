class ApplicationController < ActionController::Base
  add_flash_types :info, :error, :success
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nombreUsuario,:dni])
    devise_parameter_sanitizer.permit(:account_update, keys: [:nombreUsuario, :balance])
  end

end
