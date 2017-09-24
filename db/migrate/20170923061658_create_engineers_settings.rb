class CreateEngineersSettings < ActiveRecord::Migration[5.1]
  def change
    create_table :engineers_settings do |t|
      t.belongs_to :engineer, foreign_key: true

      t.timestamps
    end
  end
end
