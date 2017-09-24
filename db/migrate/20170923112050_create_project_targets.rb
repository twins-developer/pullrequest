class CreateProjectTargets < ActiveRecord::Migration[5.1]
  def change
    create_table :project_targets do |t|
      t.belongs_to :project, foreign_key: true
      t.belongs_to :company, foreign_key: true
      t.string :skill_list
      t.timestamps
    end
  end
end
