class CreateFrameWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :frame_works do |t|
      t.string :name, null: false
      t.integer :code, null: false
      t.timestamps
    end
  end
end
