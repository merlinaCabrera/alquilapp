class EliminarTabla < ActiveRecord::Migration[7.0]
  def change
    drop_table :tarjeta
  end
end
