class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.string :name, null: false
      t.text :note, limit: 1000
      t.string :image, null: false
      t.integer :category, null: false

      t.timestamps
    end
  end
end
