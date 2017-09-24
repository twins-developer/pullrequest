class CreateEngineersWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :engineers_works do |t|
      t.belongs_to :engineer, foreign_key: true
      t.belongs_to :tag, foreign_key: true
      t.string :title
      t.string :url
      t.string :note
    end
  end
end
