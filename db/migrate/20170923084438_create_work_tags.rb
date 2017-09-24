class CreateWorkTags < ActiveRecord::Migration[5.1]
  def change
    create_table :work_tags do |t|
      t.belongs_to :engineer, foreign_key: true
      t.belongs_to :tag, foreign_key: true
      t.belongs_to :engineers_work, foreign_key: true

      t.timestamps
    end
  end
end
