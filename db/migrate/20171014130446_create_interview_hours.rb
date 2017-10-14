class CreateInterviewHours < ActiveRecord::Migration[5.1]
  def change
    create_table :interview_hours do |t|
      t.belongs_to :company, foreign_key: true
      t.belongs_to :scout, foreign_key: true
      t.belongs_to :apply, foreign_key: true
      t.date :interviewed_on, null: false
      t.integer :wday, null: false
      t.integer :hour, null: false
      t.timestamps
    end
  end
end
