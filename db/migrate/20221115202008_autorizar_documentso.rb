class AutorizarDocumentso < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :estadoDocumentos, :integer, default: 0
  end
end