class MiAlquilerController < ApplicationController
    def bloquear_auto
        @vehiculo.update(vehiculo_params)
    end

    def desbloquear_auto
    end


    def update
        @vehiculo = Vehiculo.find(params[:id])
        @vehiculo.update(vehiculo_params)
        @vehiculo.save
    end

    private
    def vehiculo_params
    params.require(:vehiculo).permit(:marca, :modelo, :color, :descripcion, :patente, :posicion, :bloq)
    end
end
