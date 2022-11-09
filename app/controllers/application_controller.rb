class ApplicationController < ActionController::Base
    before_action :permitir_avatar,
        if: :devise_controller?

    protected

    def permitir_avatar
        devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar])
        devise_parameter_sanitizer.permit(:account_update, keys: [:avatar])
    end 
end
