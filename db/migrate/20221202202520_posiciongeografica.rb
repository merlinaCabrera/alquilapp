class Posiciongeografica < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :posicion, :point
    add_column :vehiculos, :posicion, :point
    remove_column :users, :carga
    remove_column :vehiculos, :cercania
    remove_column :vehiculos, :precio
  end
end
