class RemoveBloqFromVehiculo < ActiveRecord::Migration[7.0]
  def change
    remove_column :vehiculos, :bloq, :boolean
  end
end
