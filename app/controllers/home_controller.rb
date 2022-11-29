class HomeController < ApplicationController
    def index; end
  
    def send_order_mail
      if Contacto.new(name: current_user.nombreUsuario, email: 'daribosate7@gmail.com',
                      message: 'Este usuario requiere de su atención').deliver
        redirect_to root_path, notice: 'sera contactado en breve por uno de nuestros supervisores'
      end
    end
end
