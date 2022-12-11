class AlquilerActivo < ActiveRecord::Migration[7.0]
  def change
    add_column :alquilars, :activo, :boolean
  end
end
