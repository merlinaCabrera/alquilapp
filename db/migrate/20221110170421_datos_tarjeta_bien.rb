class DatosTarjetaBien < ActiveRecord::Migration[7.0]
  def change
    remove_column :tarjeta, :venc_dia
    remove_column :tarjeta, :codigo
    remove_column :tarjeta, :venc_mes

    add_column :tarjeta, :venc_dia, :integer
    add_column :tarjeta, :vec_mes, :integer    
    add_column :tarjeta, :codigo, :integer
  end
end
