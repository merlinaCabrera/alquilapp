class UsersController < ApplicationController

  def index 
      @users = User.all
  end
 
  def show
      @user = User.find(params[:id])
  end
     
  def new
      @user = User.new
  end 
 
  def create
      @user = User.create(user_params)   
      @user.save
      flash[:notice] = 'Supervisor agregado con éxito' 
  end
 
  def edit
      @user = User.find(params[:id])
  end    
 
  def update
      @user = User.find(params[:id])
      if @user.update(user_params)
         redirect_to supervisores_path, notice: 'Supervisor modificado con éxito'
      else
         render :edit , status: :unprocessable_entity
      end
  end
 
  def destroy
      @user = User.find(params[:id])
      @user.destroy
      flash[:notice] = "Supervisor eliminado."
  end
     
  private
  
  def user_params
      params.require(:user).permit(:nombreUsuario,:dni, :email, :super)
  end
end