class Posicionmapa < ActiveRecord::Migration[7.0]
  def change
    remove_column :vehiculos, :posicion
    remove_column :users, :posicion
    add_column :users, :latitud, :decimal
    add_column :users, :longitud, :decimal
    add_column :vehiculos, :latitud, :decimal
    add_column :vehiculos, :longitud, :decimal
  end
end