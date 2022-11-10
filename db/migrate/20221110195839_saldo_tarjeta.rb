class SaldoTarjeta < ActiveRecord::Migration[7.0]
  def change
    add_column :tarjeta, :saldo, :float, default: 0.0
  end
end
