class CreateInterviewHourMasters < ActiveRecord::Migration[5.1]
  def change
    create_table :interview_hour_masters do |t|
      t.belongs_to :company, foreign_key: true
      t.integer :wday, null: false
      t.integer :hour, null: false
      t.integer :status, null: false
      t.timestamps
    end
    add_index :interview_hour_masters, %i(company_id wday hour), unique: true
  end
end
