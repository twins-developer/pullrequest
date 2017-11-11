class CreateTools < ActiveRecord::Migration[5.1]
  def change
    create_table :tools do |t|
      t.string :name, null: false
      t.string :code, null: false
      t.timestamps
    end
  end
end