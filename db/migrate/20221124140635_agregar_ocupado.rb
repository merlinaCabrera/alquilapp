class AgregarOcupado < ActiveRecord::Migration[7.0]
  def change
    add_column :vehiculos, :ocupado, :boolean
  end
end
