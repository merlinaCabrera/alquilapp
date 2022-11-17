class DniNombreIndex < ActiveRecord::Migration[7.0]
  def change
    add_index :users, :dni, unique: true
    add_index :users, :nombreUsuario, unique: true
  end
end
