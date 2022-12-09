class CreateAlquilars < ActiveRecord::Migration[7.0]
  def change
    create_table :alquilars do |t|

      t.timestamps
    end
  end
end
