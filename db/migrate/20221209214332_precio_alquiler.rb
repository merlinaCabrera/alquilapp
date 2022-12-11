class PrecioAlquiler < ActiveRecord::Migration[7.0]
  def change
    remove_column :alquilars, :precio_alquiler
    add_column :alquilars, :precio_alquiler, :integer
    remove_column :alquilars, :extension
    add_column :alquilars, :extension, :integer,  default: 0
  end
end
