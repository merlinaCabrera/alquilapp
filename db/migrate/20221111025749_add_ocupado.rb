class AddOcupado < ActiveRecord::Migration[7.0]
  def change
    add_column :vehiculos, :ocupado, :boolean, default: false
  end
end
