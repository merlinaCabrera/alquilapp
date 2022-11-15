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
    end
   
    def edit
        @user = User.find(params[:id])
    end    
   
    def update
        @user = User.find(params[:id])
        @user.update(user_params)
    end
   
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        flash[:notice] = "Supervisor eliminado."
    end
       
    private
    
    def user_params
        params.require(:user).permit(:nombreUsuario,:dni,:email, :password, :password_confirmation, :super)
    end
end