class AlquilarController < ApplicationController
  def index
    @vehiculo = Vehiculo.find(params[:id_vehiculo])
  end

  def create
    @alquilar = Alquilar.new
    @alquilar.precio_alquiler = (params[:precio_alquiler])
    @alquilar.id_vehiculo = params[:id_vehiculo]
    @alquilar.id_user = params[:id_user]
    @alquilar.inicio = params[:inicio]
    @alquilar.fin = params[:fin]
    @alquilar.activo = true
    if @alquilar.save
      redirect_to root_path, notice: 'Alquiler realizado con éxito', status: :see_other
    else
      redirect_to root_path, notice: 'Ha ocurrido un error', status: :see_other
    end
  end

  def destroy
    @alquilar = Alquilar.where(id_user: current_user.id).find_by_activo(true)
    @alquilar.activo = false
    current_user.update(balance: (current_user.balance - @alquilar.precio_alquiler))
    @alquilar.save
    redirect_to root_path, notice: 'Alquiler cancelado', status: :see_other
  end

  def extender
    @alquilar = Alquilar.where(id_user: current_user.id).find_by_activo(true)
    @alquilar.fin = params[:fin]
    @alquilar.precio_extension = @alquilar.precio_extension + (params[:precio_extension]).to_f
    @alquilar.extension = (params[:extension])
    if @alquilar.save
      redirect_to root_path, notice: 'Extension realizada con éxito', status: :see_other
    else
      redirect_to root_path, notice: 'Ha ocurrido un error', status: :see_other
    end
  end
end
