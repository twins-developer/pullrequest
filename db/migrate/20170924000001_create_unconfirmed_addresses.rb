class CreateUnconfirmedAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :unconfirmed_addresses do |t|
      t.integer :status, null: false
      t.string :resource_type
      t.integer :resource_id
      t.string :zip_code
      t.string :prefecture
      t.string :city
      t.string :street
      t.string :building
      
      t.timestamps
    end
  end
end
