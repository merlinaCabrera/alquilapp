class AlquilarController < ApplicationController
  def index
    @vehiculo = Vehiculo.find(params[:id_vehiculo])
  end

  def create
    @alquilar = Alquilar.new
    @alquilar.id_vehiculo = params[:id_vehiculo]
    @alquilar.id_user = params[:id_user]
    @alquilar.inicio = params[:inicio]
    @alquilar.fin = params[:fin]
    @alquilar.precio_alquiler = params[:precio_alquiler]
    @alquilar.save
  end
end
