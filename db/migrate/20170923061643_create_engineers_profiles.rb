class CreateEngineersProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :engineers_profiles do |t|
      t.belongs_to :engineer, foreign_key: true
      t.integer :status
      t.string :image
      t.string :name
      t.date :birthday
      t.integer :gender
      t.integer :communication
      t.boolean :delivery
      t.string :address
      t.string :tel
      t.string :portfolio
      t.boolean :blacklist

      t.timestamps
    end
  end
end
