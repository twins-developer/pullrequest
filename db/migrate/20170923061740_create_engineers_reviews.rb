class CreateEngineersReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :engineers_reviews do |t|

      t.timestamps
    end
  end
end
