class CreateResourceTools < ActiveRecord::Migration[5.1]
  def change
    create_table :resource_tools do |t|
      t.belongs_to :tool, foreign_key: true
      t.string :resource_type
      t.integer :resource_id
      t.timestamps
    end
  end
end
