class CreateTags < ActiveRecord::Migration[5.1]
  def change
    create_table :tags do |t|
      t.string :name
      t.text :note, limit: 1000
      t.string :image

      t.timestamps
    end
  end
end
