class Agregarcolumnas < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :dni, :integer
    add_column :users, :nombreUsuario, :string
  end
end
