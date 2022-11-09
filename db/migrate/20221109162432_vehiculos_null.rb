class VehiculosNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :vehiculos , :marca, false
    change_column_null :vehiculos , :modelo, false
    change_column_null :vehiculos , :color, false
    change_column_null :vehiculos , :precio, false
    change_column_null :vehiculos , :descripcion, false
  end
end
