class CreateScouts < ActiveRecord::Migration[5.1]
  def change
    create_table :scouts do |t|
      t.belongs_to :engineer, foreign_key: true
      t.belongs_to :company, foreign_key: true
      t.date :interviewed_on
      t.datetime :start_at
      t.datetime :end_at
      t.integer :status
      t.text :note, limit: 100

      t.timestamps
    end
  end
end
