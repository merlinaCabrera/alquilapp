class DatosAlquilar < ActiveRecord::Migration[7.0]
  def change
    add_column :alquilars, :id_vehiculo, :integer
    add_column :alquilars, :id_user, :integer
    add_column :alquilars, :inicio, :datetime, null: false
    add_column :alquilars, :fin, :datetime, null: false
    add_column :alquilars, :extension, :datetime, default: 0
    add_column :alquilars, :precio_alquiler, :decimal, null: false
    add_column :alquilars, :precio_extension, :decimal, default: 0
  end
end
