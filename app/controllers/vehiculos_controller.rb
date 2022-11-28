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
        if @vehiculo.ocupado
            redirect_to vehiculos_path, notice: 'No es posible eliminarlo , ya que esta en uso ', status: :unprocessable_entity
        else
             @vehiculo.destroy
            redirect_to vehiculos_path, notice: 'Auto eliminado', status: :see_other
        end
    end

    #def alquilar 
    #    if ( ( horas * 200 ) > saldo ) 
    #        redirect_to vehiculo, notice 'saldo insuficiente', status: :unprocessable_entity
    #    else
    #        @vehiculo.ocupado = true 
    #end


    private

    def vehiculo_params
        params.require(:vehiculo).permit(:marca, :modelo, :color, :descripcion, :patente, :cercano, :ocupado )
    end 
end