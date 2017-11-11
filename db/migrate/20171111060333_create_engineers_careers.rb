class CreateEngineersCareers < ActiveRecord::Migration[5.1]
  def change
    create_table :engineers_careers do |t|
      t.belongs_to :engineer, foreign_key: true
      t.string :team_size
      t.string :role, array: true, default: []
      t.timestamps
    end
  end
end
