class AddColumnCercaniaToVehiculo < ActiveRecord::Migration[7.0]
  def change
    add_column :vehiculos, :cercania, :integer
  end
end
