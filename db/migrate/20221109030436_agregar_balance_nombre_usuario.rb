class AgregarBalanceNombreUsuario < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :balance, :float, default: 0.0
    add_column :users, :nombreUsuario, :string
  end
end
