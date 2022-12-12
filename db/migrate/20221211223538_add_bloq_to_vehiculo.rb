class AddBloqToVehiculo < ActiveRecord::Migration[7.0]
  def change
    add_column :vehiculos, :bloq, :boolean, default: false
  end
end
