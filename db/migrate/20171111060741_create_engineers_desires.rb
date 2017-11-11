class CreateEngineersDesires < ActiveRecord::Migration[5.1]
  def change
    create_table :engineers_desires do |t|
      t.belongs_to :engineer, foreign_key: true
      t.integer :shift, array: true, default: []
      t.integer :timing
      t.integer :salary
      t.integer :job_category
      t.timestamps
    end
  end
end
