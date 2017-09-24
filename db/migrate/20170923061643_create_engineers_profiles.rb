class CreateEngineersProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :engineers_profiles do |t|
      t.belongs_to :engineer, foreign_key: true
      t.integer :status
      t.string :image
      t.string :last_name
      t.string :last_name_kana
      t.string :first_name
      t.string :first_name_kana
      t.date :birthday
      t.integer :gender
      t.string :zip_code
      t.string :prefecture
      t.string :city
      t.string :street
      t.string :building
      t.string :tel
      t.string :languge
      t.string :country
      t.string :message

      t.timestamps
    end
  end
end
