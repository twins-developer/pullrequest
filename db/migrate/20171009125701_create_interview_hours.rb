class CreateInterviewHours < ActiveRecord::Migration[5.1]
  def change
    create_table :interview_hours do |t|
      t.belongs_to :company, foreign_key: true
      t.integer :wday, null: false
      t.integer :hour, null: false
      t.integer :status, null: false

      t.timestamps
    end
    add_index :interview_hours, %i(company_id wday hour), unique: true
  end
end
