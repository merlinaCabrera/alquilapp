class Cargausuario < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :carga, :float
  end
end
