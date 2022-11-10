class Patenteadentro < ActiveRecord::Migration[7.0]
  def change
    add_column :vehiculos, :precio, :integer
  end
end
