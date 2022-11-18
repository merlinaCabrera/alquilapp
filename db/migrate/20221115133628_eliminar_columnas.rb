class EliminarColumnas < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :dni
    remove_column :users, :nombreUsuario
  end
end
