class RegistrationsController < Devise::RegistrationsController
    protected

    def after_sign_up_path_for(resource)
        '/home/index.html.erb'
    end

    def after_sign_out_path_for(resource)
        '/homea/index.html.erb'
    end

end
