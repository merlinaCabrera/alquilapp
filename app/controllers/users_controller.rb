class UsersController < ApplicationController

    def update
        respond_to do |format|
            if current_user.update(user_params)
                format.html { redirect_to current_user, notice: 'Imagen de perfil actualizada' }
            else
                format.html { render :edit }
            end
        end
    end

    def eliminar_imagen
        image = ActiveStorage::Attachment.find(params[:image_id]) #busca la imagen en el ActiveStorage
        if current_user == image.record #solamente puedes borrar tu propia imagen
            image.purge
            redirect_back(fallback_location: request.referer)
        else
            redirect_to root_url, notice: "Ojito nene"
        end
    end

    private


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
   
        if @user.save
           redirect_to supervisores_path, notice: 'Supervisor agregado con éxito' 
        else
            render :new , status: :unprocessable_entity
        end
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
        @user = Vehiculo.find(params[:id])
        @user.destroy
   
        redirect_to supervisores_path, notice: 'Supervisor eliminado', status: :see_other
    end
       
    private

    def user_params
        params.require(:user).permit(:nombreUsuario,:dni,:imagen_perfil)
    end
end