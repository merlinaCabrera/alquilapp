class VehiculosController < ApplicationController
    def index 
     @vehiculos = Vehiculo.all
    end

    def show
     @vehiculo = Vehiculo.find(params[:id])
    end
    
    def new
     @vehiculo = Vehiculo.new
    end 

    def create
     @vehiculo = Vehiculo.create(vehiculo_params)   

     if @vehiculo.save
        redirect_to vehiculos_path, notice: 'Auto agregado con éxito' 
     else
         render :new , status: :unprocessable_entity
     end

    end

    def edit
     @vehiculo = Vehiculo.find(params[:id])
    end    

    def update
     @vehiculo = Vehiculo.find(params[:id])

     if @vehiculo.update(vehiculo_params)
        redirect_to vehiculos_path, notice: 'Auto modificado con éxito'
     else
        render :edit , status: :unprocessable_entity
     end

    end

    def destroy
        @vehiculo = Vehiculo.find(params[:id])

        @vehiculo.destroy

        redirect_to vehiculos_path, notice: 'Auto eliminado', status: :see_other
    end
    
    private

    def vehiculo_params
        params.require(:vehiculo).permit(:marca, :modelo, :color, :descripcion, :patente )
    end 
end