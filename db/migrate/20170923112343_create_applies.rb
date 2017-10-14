class CreateApplies < ActiveRecord::Migration[5.1]
  def change
    create_table :applies do |t|
      t.belongs_to :engineer, foreign_key: true
      t.belongs_to :company, foreign_key: true
      t.belongs_to :project, foreign_key: true
      t.date :interviewed_on
      t.datetime :start_at
      t.integer :status
      t.text :engineer_reason, limit: 100
      t.text :company_reason, limit: 100

      t.timestamps
    end
  end
end
