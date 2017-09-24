class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.belongs_to :company, foreign_key: true
      t.date :start_at
      t.date :end_at
      t.integer :status
      t.string :title
      t.text :note, limit: 10000

      t.timestamps
    end
  end
end
