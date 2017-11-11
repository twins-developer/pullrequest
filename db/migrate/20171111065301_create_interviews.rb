class CreateInterviews < ActiveRecord::Migration[5.1]
  def change
    create_table :interviews do |t|
      t.integer :status, null: false
      t.string :resource_type
      t.integer :resource_id
      t.datetime :interview_at
      t.string :place
      t.integer :communication_id
      t.integer :means
      t.timestamps
    end
  end
end
