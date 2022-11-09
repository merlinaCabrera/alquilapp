class Datostarjeta < ActiveRecord::Migration[7.0]
  def change
    add_column :tarjeta, :nombre, :string
    add_column :tarjeta, :apellido, :string
    add_column :tarjeta, :codigo, :bignum
    add_column :tarjeta, :numeros16, :bignum
    add_column :tarjeta, :venc_dia, :bignum
    add_column :tarjeta, :vec_mes, :bignum
  end
end
