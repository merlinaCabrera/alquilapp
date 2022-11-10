class VehiculosNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :vehiculos , :marca, false
    change_column_null :vehiculos , :modelo, false
    change_column_null :vehiculos , :color, false
    change_column_null :vehiculos , :patente, false
    change_column_null :vehiculos , :descripcion, false
    change_column_null :vehiculos , :cercania, false
  end
end
