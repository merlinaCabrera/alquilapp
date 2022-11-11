class AddCercaniaAutos < ActiveRecord::Migration[7.0]
  def change
    remove_column :vehiculos, :cercania
    add_column :vehiculos, :cercano, :integer, default: 0
  end
end
