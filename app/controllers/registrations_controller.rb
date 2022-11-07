class RegistrationsController < Devise::RegistrationsController
    protected

    def after_sign_up_path_for(resource)
        '/home/inicio.html'
    end

    def after_sign_out_path_for(resource)
        '/devise/registrations/new.html.erb'
    end

end
