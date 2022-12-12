class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to root_path, notice: 'Usuario creado. Ya puede iniciar sesión!'
    else
      render '/home/index', status: :see_other
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
      redirect_to listado_super_path, notice: 'super modificado con éxito'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:notice] = 'Supervisor eliminado'
  end

  def estadoDocumentoActualizar
    @user = User.find(params[:id])
    @user.update(params.require(:user).permit(:estadoDocumentos))
    flash[:notice] = 'hola a ver'
    redirect_to root_path
  end

  private

  def user_params
    params.require(:user).permit(:id, :nombreUsuario, :dni, :email, :password, :password_confirmation, :super, :estadoDocumentos)
  end
end
