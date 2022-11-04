class AdminSuper < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :admin, :boolean, default: false, null: false
    add_column :users, :super, :boolean, default: false, null: false
  end
end
