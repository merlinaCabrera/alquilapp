class CreateTarjeta < ActiveRecord::Migration[7.0]
  def change
    create_table :tarjeta do |t|

      t.timestamps
    end
  end
end
