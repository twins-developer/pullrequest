class CreateResourceFrameWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :resource_frame_works do |t|
      t.belongs_to :frame_work, foreign_key: true
      t.string :resource_type
      t.integer :resource_id
      t.timestamps
    end
  end
end
