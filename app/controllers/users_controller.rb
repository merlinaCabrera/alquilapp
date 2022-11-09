class UsersController < ApplicationController

    def index 
        @users = User.all
    end

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

    def user_params
        params.require(:user).permit(:nombreUsuario,:dni,:imagen_perfil)
    end
end