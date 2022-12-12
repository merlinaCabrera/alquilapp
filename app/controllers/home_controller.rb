class HomeController < ApplicationController
  def index; end

  def send_order_mail
    if Contacto.new(name: current_user.nombreUsuario, email: 'daribosate7@gmail.com',
                    message: 'Este usuario requiere de su atención').deliver
      redirect_to root_path, notice: 'sera contactado en breve por uno de nuestros supervisores'
    end
  end

  def cargar_dinero
    if params[:balance].to_f.negative?
      redirect_to bille_path, notice: 'Ha ingresado un valor inválido, por favor intente de nuevo'
    else
      @user = current_user
      @user.balance = @user.balance + params[:balance].to_f
      @user.save
      redirect_to bille_path
    end
  end

  def documentos
    @user = User.find_by_id(params[:id])
    @user.estadoDocumentos = params[:estadoDocumentos]
    @user.save
    redirect_to documentos_path
  end

  def bloquear_auto  
    Vehiculo.find_by_id(params[:id]).bloq=false
  end

end
