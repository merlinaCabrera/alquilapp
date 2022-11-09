class CreateVehiculos < ActiveRecord::Migration[7.0]
  def change
    create_table :vehiculos do |t|
      t.string :marca
      t.string :modelo
      t.string :color
      t.string :patente
      t.text :descripcion

      t.timestamps
    end
  end
end
