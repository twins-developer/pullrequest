class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.belongs_to :staff, foreign_key: true
      t.string :title
      t.date :started_on
      t.date :ended_on
      t.text :note, limit: 10000
      t.text :code, limit: 10000

      t.timestamps
    end
  end
end
