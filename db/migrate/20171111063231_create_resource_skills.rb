class CreateResourceSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :resource_skills do |t|
      t.belongs_to :skill, foreign_key: true
      t.string :resource_type
      t.integer :resource_id
      t.timestamps
    end
  end
end
