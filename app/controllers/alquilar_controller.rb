class AlquilarController < ApplicationController
  def index
    @vehiculo = Vehiculo.find(params[:id_vehiculo])
  end

  def create
    t = Time.now
    @alquilar = Alquilar.new
    @alquilar.precio_alquiler = (params[:precio_alquiler])
    current_user.update(balance: (current_user.balance - @alquilar.precio_alquiler.to_f))
    @alquilar.id_vehiculo = params[:id_vehiculo]
    @alquilar.id_user = params[:id_user]
    @alquilar.inicio = t
    @alquilar.fin = t + (params[:fin].to_i * 60 * 60)
    if @alquilar.save
      redirect_to root_path, notice: 'Alquiler realizado con éxito', status: :see_other
    end
  end

  def destroy
    @alquilar = Alquilar.find_by_id_user(current_user.id)
    @alquilar.destroy
    redirect_to root_path, notice: 'Alquiler cancelado', status: :see_other
  end
end
