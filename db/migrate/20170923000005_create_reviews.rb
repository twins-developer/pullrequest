class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :title
      t.date :start_at
      t.date :end_at
      t.text :note, limit: 10000
      t.text :code, limit: 10000

      t.timestamps
    end
  end
end
