class CreateProjectTags < ActiveRecord::Migration[5.1]
  def change
    create_table :project_tags do |t|
      t.belongs_to :tag, foreign_key: true
      t.belongs_to :project, foreign_key: true
      t.belongs_to :company, foreign_key: true

      t.timestamps
    end
  end
end
