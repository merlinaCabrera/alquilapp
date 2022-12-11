class Posicion2 < ActiveRecord::Migration[7.0]
  def change
    remove_column :vehiculos, :posicion
    remove_column :users, :posicion
    remove_column :users, :latitud
    remove_column :users, :longitud
    remove_column :vehiculos, :latitud
    remove_column :vehiculos, :longitud
    add_column :users, :latitud, :decimal
    add_column :users, :longitud, :decimal
    add_column :vehiculos, :latitud, :decimal
    add_column :vehiculos, :longitud, :decimal
  end
end
