class Patenteadentro < ActiveRecord::Migration[7.0]
  def change
    remove_column :vehiculos, :precio, :integer
  end
end
